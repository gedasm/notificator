require 'httparty'
require 'json'
require 'pg'

DB_NAME = "postgres"
DB_USER = "app"
DB_PASS = "appuser1"
API_ENDPOINT_URL = "https://api.weather.gov/alerts/active?area="
SEVERITY_TYPES = %w[severe higher]
STATE_CODES = %w[AL AK AS AZ AR CA CO CT DE DC FL GA GU HI ID IL IN IA KS KY LA ME MD MA MI MN MS MO MT NE NV NH NJ NM NY NC ND MP OH OK OR PA PR RI SC SD TN TX UT VT VA VI WA WV WI WY]

conn = PG.connect(dbname: DB_NAME, user: DB_USER, password: DB_PASS)

conn.exec("BEGIN");
conn.exec("DELETE FROM app.weather_t");
conn.prepare('sql', 'INSERT INTO "app"."weather_t" ("state_code", "severity", "area_desc", "headline", "description", "instruction", "effective", "expires", "ugc") VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9)')

def parse_weather(state_code, conn)
  response = HTTParty.get(API_ENDPOINT_URL+state_code)

  if response.code != 200
    puts "Couldn't fetch JSON for " + state_code
    return
  end

  json_parsed = JSON.parse(response.body)

  json_parsed["features"].each do |feature|
    severity = feature["properties"]["severity"]
    if SEVERITY_TYPES.include?(severity.downcase)
      areaDesc = feature["properties"]["areaDesc"]
      headline = feature["properties"]["headline"]
      description = feature["properties"]["description"]
      instruction = feature["properties"]["instruction"].nil? ? " " : feature["properties"]["instruction"];
      effective = feature["properties"]["effective"]
      expires = feature["properties"]["expires"]
      ugc = feature["properties"]["geocode"]["UGC"].join(',')
      conn.exec_prepared('sql', [state_code, severity, areaDesc, headline, description, instruction, effective, expires, ugc])
    end
  end
end

STATE_CODES.each do |state_code|
  puts "Parsing: " + state_code
  parse_weather(state_code, conn)
end

conn.exec("COMMIT");