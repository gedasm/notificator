require 'pg'
require 'mail'

DB_NAME = "postgres"
DB_USER = "app"
DB_PASS = "appuser1"
SENDER_USER = "username@gmail.com"
SENDER_PASS = "password"

conn = PG.connect(dbname: DB_NAME, user: DB_USER, password: DB_PASS)

res  = conn.exec("SELECT t.name, t.email, t.location, t.headline, t.description, t.instruction, t.expires
FROM (SELECT d.name, d.email, d.location, w.headline, w.description, w.instruction, w.expires,
ROW_NUMBER() OVER (PARTITION BY d.id ORDER BY w.expires DESC, w.headline DESC) rnum
FROM app.weather_t w, app.drivers_t d
WHERE NOW() BETWEEN w.effective AND w.expires
AND d.location = ANY(STRING_TO_ARRAY(w.ugc, ',')))t
WHERE t.rnum = 1")

Mail.defaults do
  delivery_method :smtp, {
    address:              'smtp.gmail.com',
    port:                 587,
    user_name:            SENDER_USER,
    password:             SENDER_PASS,
    authentication:       'plain',
    enable_starttls_auto: true
  }
end

res.each do |row|
  name = row["name"]
  email = row["email"]
  location = row["location"]
  headline = row["headline"]
  description = row["description"]
  instruction = row["instruction"]
  expires = row["expires"]

  puts "Send email to " + name

  mail = Mail.new do
    from    SENDER_PASS
    to      email
    subject "Weather notification for your location - " + location

    text_part do
      body description
    end

    html_part do
      content_type 'text/html; charset=UTF-8'
      body "<h1 style='color:#B0AA0B'>Dear #{name},</h1>
<h2 style='color:#AF130B'>#{headline}</h2>
<h2 style='color:#AF580B'>#{description}</h2>
<h3 style='color:#098D09'>#{instruction}</h3>
<h4 style='color:#910000'>Warning expires at #{expires}</h4>"
    end
  end

  mail.deliver

end