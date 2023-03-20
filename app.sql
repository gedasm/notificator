-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               PostgreSQL 15.2, compiled by Visual C++ build 1914, 64-bit
-- Server OS:                    
-- HeidiSQL Version:             12.4.0.6659
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES  */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table app.drivers_t
CREATE TABLE IF NOT EXISTS "drivers_t" (
	"id" INTEGER NOT NULL DEFAULT 'nextval(''drivers_seq''::regclass)',
	"name" VARCHAR(256) NOT NULL,
	"email" VARCHAR(256) NOT NULL,
	"location" VARCHAR(16) NOT NULL
);

-- Dumping data for table app.drivers_t: 2 rows
/*!40000 ALTER TABLE "drivers_t" DISABLE KEYS */;
INSERT INTO "drivers_t" ("id", "name", "email", "location") VALUES
	(6, 'John Smith', 'gedasm@gmail.com', 'AZC013'),
	(8, 'George Richardson', 'gedasm@gmail.com', 'OKZ077');
/*!40000 ALTER TABLE "drivers_t" ENABLE KEYS */;

-- Dumping structure for table app.weather_t
CREATE TABLE IF NOT EXISTS "weather_t" (
	"id" INTEGER NOT NULL DEFAULT 'nextval(''weather_seq''::regclass)',
	"state_code" VARCHAR(2) NOT NULL,
	"severity" VARCHAR(16) NOT NULL,
	"area_desc" TEXT NOT NULL,
	"headline" TEXT NOT NULL,
	"description" TEXT NOT NULL,
	"instruction" TEXT NOT NULL,
	"effective" TIMESTAMPTZ NOT NULL,
	"expires" TIMESTAMPTZ NOT NULL,
	"ugc" TEXT NULL DEFAULT NULL,
	"record_date" TIMESTAMPTZ NULL DEFAULT 'now()'
);

-- Dumping data for table app.weather_t: 105 rows
/*!40000 ALTER TABLE "weather_t" DISABLE KEYS */;
INSERT INTO "weather_t" ("id", "state_code", "severity", "area_desc", "headline", "description", "instruction", "effective", "expires", "ugc", "record_date") VALUES
	(981, 'AL', 'Severe', 'Marion; Winston; Walker; Blount; Etowah; Calhoun; Cherokee; Cleburne; St. Clair; Talladega; Clay; Randolph', 'Freeze Watch issued March 17 at 4:15AM CDT until March 19 at 10:00AM CDT by NWS Birmingham AL', '* WHAT...For the first Freeze Watch, sub-freezing temperatures as
low as 31 possible. For the second Freeze Watch, sub-freezing
temperatures as low as 24 possible.

* WHERE...northern portions of Central Alabama.

* WHEN...For the first Freeze Watch, from Saturday 1 AM through 9
AM. For the second Freeze Watch, from Sunday 1 AM through 10 AM.

* IMPACTS...Frost and freeze conditions could kill crops, other
sensitive vegetation and possibly damage unprotected outdoor
plumbing.', 'Take steps now to protect tender plants from the cold. To prevent
freezing and possible bursting of outdoor water pipes they should
be wrapped, drained, or allowed to drip slowly. Those that have
in-ground sprinkler systems should drain them and cover above-
ground pipes to protect them from freezing.', '2023-03-17 11:15:00+02', '2023-03-17 23:00:00+02', 'ALZ011,ALZ014,ALZ015,ALZ017,ALZ018,ALZ019,ALZ020,ALZ021,ALZ026,ALZ027,ALZ028,ALZ029', '2023-03-17 13:48:34.069057+02'),
	(982, 'AL', 'Severe', 'Lamar; Fayette; Pickens; Tuscaloosa; Jefferson; Shelby; Sumter; Greene; Hale; Perry; Bibb; Chilton; Coosa; Tallapoosa; Chambers; Marengo; Dallas; Autauga; Elmore; Lee', 'Freeze Watch issued March 17 at 4:15AM CDT until March 19 at 10:00AM CDT by NWS Birmingham AL', '* WHAT...Sub-freezing temperatures as low as 28 possible.

* WHERE...Portions of Central Alabama.

* WHEN...From Sunday 1 AM through 10 AM.

* IMPACTS...Frost and freeze conditions could kill crops, other
sensitive vegetation and possibly damage unprotected outdoor
plumbing.', 'Take steps now to protect tender plants from the cold. To prevent
freezing and possible bursting of outdoor water pipes they should
be wrapped, drained, or allowed to drip slowly. Those that have
in-ground sprinkler systems should drain them and cover above-
ground pipes to protect them from freezing.', '2023-03-17 11:15:00+02', '2023-03-17 23:00:00+02', 'ALZ012,ALZ013,ALZ022,ALZ023,ALZ024,ALZ025,ALZ030,ALZ031,ALZ032,ALZ033,ALZ034,ALZ035,ALZ036,ALZ037,ALZ038,ALZ039,ALZ040,ALZ041,ALZ043,ALZ047', '2023-03-17 13:48:34.069057+02'),
	(983, 'AL', 'Severe', 'Marion; Winston; Walker; Blount; Etowah; Calhoun; Cherokee; Cleburne; St. Clair; Talladega; Clay; Randolph', 'Freeze Watch issued March 17 at 4:15AM CDT until March 18 at 9:00AM CDT by NWS Birmingham AL', '* WHAT...For the first Freeze Watch, sub-freezing temperatures as
low as 31 possible. For the second Freeze Watch, sub-freezing
temperatures as low as 24 possible.

* WHERE...northern portions of Central Alabama.

* WHEN...For the first Freeze Watch, from Saturday 1 AM through 9
AM. For the second Freeze Watch, from Sunday 1 AM through 10 AM.

* IMPACTS...Frost and freeze conditions could kill crops, other
sensitive vegetation and possibly damage unprotected outdoor
plumbing.', 'Take steps now to protect tender plants from the cold. To prevent
freezing and possible bursting of outdoor water pipes they should
be wrapped, drained, or allowed to drip slowly. Those that have
in-ground sprinkler systems should drain them and cover above-
ground pipes to protect them from freezing.', '2023-03-17 11:15:00+02', '2023-03-17 23:00:00+02', 'ALZ011,ALZ014,ALZ015,ALZ017,ALZ018,ALZ019,ALZ020,ALZ021,ALZ026,ALZ027,ALZ028,ALZ029', '2023-03-17 13:48:34.069057+02'),
	(984, 'AL', 'Severe', 'Lauderdale; Colbert; Franklin; Lawrence; Limestone; Madison; Morgan; Marshall; Jackson; DeKalb; Cullman; Moore; Lincoln; Franklin', 'Freeze Watch issued March 17 at 3:27AM CDT until March 19 at 11:00AM CDT by NWS Huntsville AL', '* WHAT...For the first Freeze Watch, sub-freezing temperatures
as low as 30 possible. For the second Freeze Watch, sub-
freezing temperatures as low as 23 possible.

* WHERE...Portions of north central, northeast and northwest
Alabama and southern middle Tennessee.

* WHEN...For the first Freeze Watch, from late tonight through
Saturday morning. For the second Freeze Watch, from late
Saturday night through Sunday morning.

* IMPACTS...Frost and freeze conditions could kill crops, other
sensitive vegetation and possibly damage unprotected outdoor
plumbing.', 'Take steps now to protect tender plants from the cold. To prevent
freezing and possible bursting of outdoor water pipes they should
be wrapped, drained, or allowed to drip slowly. Those that have
in-ground sprinkler systems should drain them and cover above-
ground pipes to protect them from freezing.', '2023-03-17 10:27:00+02', '2023-03-17 22:00:00+02', 'ALZ001,ALZ002,ALZ003,ALZ004,ALZ005,ALZ006,ALZ007,ALZ008,ALZ009,ALZ010,ALZ016,TNZ076,TNZ096,TNZ097', '2023-03-17 13:48:34.069057+02'),
	(985, 'AL', 'Severe', 'Lauderdale; Colbert; Franklin; Lawrence; Limestone; Madison; Morgan; Marshall; Jackson; DeKalb; Cullman; Moore; Lincoln; Franklin', 'Freeze Watch issued March 17 at 3:27AM CDT until March 18 at 9:00AM CDT by NWS Huntsville AL', '* WHAT...For the first Freeze Watch, sub-freezing temperatures
as low as 30 possible. For the second Freeze Watch, sub-
freezing temperatures as low as 23 possible.

* WHERE...Portions of north central, northeast and northwest
Alabama and southern middle Tennessee.

* WHEN...For the first Freeze Watch, from late tonight through
Saturday morning. For the second Freeze Watch, from late
Saturday night through Sunday morning.

* IMPACTS...Frost and freeze conditions could kill crops, other
sensitive vegetation and possibly damage unprotected outdoor
plumbing.', 'Take steps now to protect tender plants from the cold. To prevent
freezing and possible bursting of outdoor water pipes they should
be wrapped, drained, or allowed to drip slowly. Those that have
in-ground sprinkler systems should drain them and cover above-
ground pipes to protect them from freezing.', '2023-03-17 10:27:00+02', '2023-03-17 22:00:00+02', 'ALZ001,ALZ002,ALZ003,ALZ004,ALZ005,ALZ006,ALZ007,ALZ008,ALZ009,ALZ010,ALZ016,TNZ076,TNZ096,TNZ097', '2023-03-17 13:48:34.069057+02'),
	(986, 'AZ', 'Severe', 'Coconino, AZ; Navajo, AZ', 'Flood Warning issued March 17 at 3:28AM MST until March 18 at 12:00AM MST by NWS Flagstaff AZ', '* WHAT...Flooding caused by earlier rain and snowmelt is expected.

* WHERE...Little Colorado River near Bird Springs.

* WHEN...Until midnight MST Saturday /100 AM MDT Saturday/.

* IMPACTS...Flooding over the approaches to the bridge across Navajo
Route 71 near Bird Springs. Flooding of low-water crossings along
the Little Colorado River.

* ADDITIONAL DETAILS...
- At 317 AM MST /417 AM MDT/, river guage reports indicated
rises along the Little Colorado River due to prior rain and
snowmelt. The elevated flow is expected to reach Bird Springs
by late this morning and crest during the afternoon.
- This includes the following creeks, washes and rivers...
Little Colorado River.
- Some locations that will experience flooding include...
Bird Springs.
- Visit www.weather.gov/safety/flood for more information on
flood safety.', 'Stay away or be swept away! The banks of creeks and washes are
unstable and unsafe during any flooding event.

Low water crossings will become dangerous. Do not attempt to cross
flooded roads. Find an alternate route.', '2023-03-17 12:28:00+02', '2023-03-18 09:00:00+02', 'AZC005,AZC017', '2023-03-17 13:48:34.069057+02'),
	(987, 'AZ', 'Severe', 'Coconino, AZ', 'Flood Warning issued March 17 at 1:44AM MST until March 18 at 5:00AM MST by NWS Flagstaff AZ', '* WHAT...Flooding caused by rain and snowmelt is expected.

* WHERE...Cataract Creek from the Redlands Crossing to the Colorado
River.

* WHEN...Until 500 AM MST Saturday /600 AM MDT Saturday/.

* IMPACTS...Flooding of Cataract Creek is imminent or occurring with
further rises in the water levels expected. Deadly flooding over
low-water crossings and minor flooding in the Supai campground is
expected.

* ADDITIONAL DETAILS...
- At 143 AM MST /243 AM MDT/, river gauges indicated
significant rises along Cataract Creek due to prior heavy
rain and snowmelt. Flooding is already occurring in the
warned area.
- This includes the following creeks, washes and rivers...
Havasu Creek.
- Some locations that will experience flooding include...
Havasupai Reservation and Supai.
- This includes the following swimming holes...
All swimming holes on Havasu Creek near Supai.
- Visit www.weather.gov/safety/flood for more information on
flood safety.', 'Be especially cautious at night when it is harder to recognize the
dangers of flooding.

Stay away or be swept away! The banks of creeks and washes are
unstable and unsafe during any flooding event.

Get out of washes and creeks if you are camping or hiking! Flooding
is occurring or imminent and will inundate area drainages.', '2023-03-17 10:44:00+02', '2023-03-18 14:00:00+02', 'AZC005', '2023-03-17 13:48:34.069057+02'),
	(988, 'AZ', 'Severe', 'Maricopa, AZ', 'Flood Warning issued March 16 at 8:21AM MST until March 25 at 5:00PM MST by NWS Phoenix AZ', '* WHAT...Flooding caused by upstream dam release continues.

* WHERE...A portion of south central Arizona, including the
following county, Maricopa.

* WHEN...Until at least 500 PM MST Saturday Mar 25.

* IMPACTS...Flooding of unbridged crossings across the Salt and Gila
Rivers is imminent or occurring.


* ADDITIONAL DETAILS...
- At 819 AM MST, an ongoing water release from Tempe Town Lake
is causing flooding in the warned area, impacting low water
crossings. Impacts may extend beyond the current expiration
time.
- Some locations that will experience flooding include...
El Mirage Road near Avondale, agricultural and industrial
interests along and within the Salt and Gila river beds.
- http://www.weather.gov/safety/flood', 'Turn around, don''t drown when encountering flooded roads. Most flood
deaths occur in vehicles.', '2023-03-16 17:21:00+02', '2023-03-26 02:00:00+02', 'AZC013', '2023-03-17 13:48:34.069057+02'),
	(989, 'AZ', 'Severe', 'Maricopa, AZ', 'Flood Warning issued March 16 at 8:19AM MST until March 25 at 5:00PM MST by NWS Phoenix AZ', '* WHAT...Flooding caused by upstream dam release continues.

* WHERE...A portion of south central Arizona, including the
following county, Maricopa.

* WHEN...Until at least 500 PM MST Saturday Mar 25.

* IMPACTS...Flooding of unbridged crossings across the Salt River
downstream of Tempe Town Lake is imminent or occurring

* ADDITIONAL DETAILS...
- At 817 AM MST, ongoing water release from Tempe Town Lake is
causing flooding in the warned area, impacting low water
crossings. Impacts may extend beyond the current expiration
time.
- This includes the following streams and drainages...
Salt River.
- Some locations that will experience flooding include...
67th Ave and 91st Ave where they cross the Salt River in
Phoenix.
- http://www.weather.gov/safety/flood', 'Turn around, don''t drown when encountering flooded roads. Most flood
deaths occur in vehicles.', '2023-03-16 17:19:00+02', '2023-03-26 02:00:00+02', 'AZC013', '2023-03-17 13:48:34.069057+02'),
	(990, 'AZ', 'Severe', 'Maricopa, AZ', 'Flood Warning issued March 16 at 8:16AM MST until March 25 at 2:00PM MST by NWS Phoenix AZ', '* WHAT...Flooding caused by upstream dam release continues.

* WHERE...A portion of south central Arizona, including the
following county, Maricopa.

* WHEN...Until at least 200 PM MST Saturday Mar 25.

* IMPACTS...Flooding of unbridged crossings across the Salt River
upstream of Tempe Town Lake is imminent or occurring.

* ADDITIONAL DETAILS...
- At 814 AM MST, an ongoing water release from Granite Reef Dam
is causing flooding in the warned area, impacting low water
crossings upstream of Tempe Town Lake. Impacts may extend
beyond the current expiration time.
- Some locations that will experience flooding include...
low-lying areas along the Salt River in Mesa, Tempe and
Granite Reef Dam.
- http://www.weather.gov/safety/flood', 'Turn around, don''t drown when encountering flooded roads. Most flood
deaths occur in vehicles.', '2023-03-16 17:16:00+02', '2023-03-25 23:00:00+02', 'AZC013', '2023-03-17 13:48:34.069057+02'),
	(991, 'AZ', 'Severe', 'Gila, AZ', 'Flood Warning issued March 16 at 8:11AM MST until March 26 at 12:00PM MST by NWS Phoenix AZ', '* WHAT...Flooding caused by rain and snowmelt continues.

* WHERE...A portion of east central Arizona, including the following
county, Gila.

* WHEN...Until at least noon MST Sunday Mar 26.

* IMPACTS...Flooding on Tonto Creek through Tonto Basin. Unbridged
crossings are not safe to pass.

* ADDITIONAL DETAILS...
- At 809 AM MST, a streamflow gauge on Tonto Creek, upstream
from Tonto Basin, measured 10.05 feet as of 8:00 AM MST
Thursday. Unbridged crossings in Tonto Basin, including A
Crossing, Bar X Crossing, Greenback Crossing, and Store
Crossing are not safe to pass with this type of flow.
Flooding may decrease temporarily Tuesday into Wednesday but
rain later Wednesday into Thursday will drive water levels up
again.
- Some locations that will experience flooding include...
Tonto Basin.
- http://www.weather.gov/safety/flood', 'Turn around, don''t drown when encountering flooded roads. Most flood
deaths occur in vehicles.', '2023-03-16 17:11:00+02', '2023-03-26 22:00:00+03', 'AZC007', '2023-03-17 13:48:34.069057+02'),
	(992, 'AR', 'Severe', 'Ashley; Chicot; Morehouse; West Carroll; East Carroll; Bolivar; Sunflower; Leflore; Grenada; Carroll; Montgomery; Webster; Clay; Lowndes; Choctaw; Oktibbeha; Washington; Humphreys; Holmes; Attala; Winston; Noxubee; Issaquena; Sharkey; Yazoo; Madison; Leake; Neshoba; Kemper; Warren; Hinds; Rankin; Scott; Newton; Lauderdale', 'Freeze Watch issued March 17 at 3:31AM CDT until March 19 at 10:00AM CDT by NWS Jackson MS', '* WHAT...Sub-freezing temperatures as low as 28 possible.

* WHERE...Portions of southeast Arkansas, northeast Louisiana and
central Mississippi.

* WHEN...From late Saturday night through Sunday morning.

* IMPACTS...Frost and freeze conditions could kill crops, other
sensitive vegetation and possibly damage unprotected outdoor
plumbing.', 'Take steps now to protect tender plants from the cold. To prevent
freezing and possible bursting of outdoor water pipes they should
be wrapped, drained, or allowed to drip slowly. Those that have
in-ground sprinkler systems should drain them and cover above-
ground pipes to protect them from freezing.', '2023-03-17 10:31:00+02', '2023-03-17 18:45:00+02', 'ARZ074,ARZ075,LAZ007,LAZ008,LAZ009,MSZ018,MSZ019,MSZ025,MSZ026,MSZ027,MSZ028,MSZ029,MSZ030,MSZ031,MSZ032,MSZ033,MSZ034,MSZ035,MSZ036,MSZ037,MSZ038,MSZ039,MSZ040,MSZ041,MSZ042,MSZ043,MSZ044,MSZ045,MSZ046,MSZ047,MSZ048,MSZ049,MSZ050,MSZ051,MSZ052', '2023-03-17 13:48:34.069057+02'),
	(993, 'AR', 'Severe', 'Lee; Phillips; DeSoto; Marshall; Benton; Tippah; Alcorn; Tunica; Tate; Coahoma; Quitman; Panola', 'Freeze Watch issued March 17 at 3:31AM CDT until March 18 at 9:00AM CDT by NWS Memphis TN', '* WHAT...For the Freeze Warning, sub-freezing temperatures as low
as 25 expected. For the Freeze Watch, sub-freezing temperatures
as low as 32 possible.

* WHERE...Portions of East Arkansas and North Mississippi.

* WHEN...For the Freeze Warning, from 10 PM Saturday to 11 AM
CDT Sunday. For the Freeze Watch, from late tonight through
Saturday morning.

* IMPACTS...Frost and freeze conditions will kill crops, other
sensitive vegetation and possibly damage unprotected outdoor
plumbing.', 'Take steps now to protect tender plants from the cold. To prevent
freezing and possible bursting of outdoor water pipes they should
be wrapped, drained, or allowed to drip slowly. Those that have
in-ground sprinkler systems should drain them and cover above-
ground pipes to protect them from freezing.', '2023-03-17 10:31:00+02', '2023-03-17 23:15:00+02', 'ARZ049,ARZ058,MSZ001,MSZ002,MSZ003,MSZ004,MSZ005,MSZ007,MSZ008,MSZ010,MSZ011,MSZ012', '2023-03-17 13:48:34.069057+02'),
	(994, 'AR', 'Severe', 'Garland; Saline; Pulaski; Lonoke; Prairie; Monroe; Pike; Clark; Hot Spring; Grant; Jefferson; Arkansas; Dallas; Cleveland; Lincoln', 'Freeze Watch issued March 17 at 3:07AM CDT until March 18 at 9:00AM CDT by NWS Little Rock AR', '...FREEZE WARNING IN EFFECT FROM MIDNIGHT SATURDAY NIGHT TO 9 AM
CDT SUNDAY...

* WHAT...For the Freeze Warning, sub-freezing temperatures as low
as 25 expected Saturday night through Sunday morning. For the
Freeze Watch, near-freezing temperatures as low as 34 possible
late tonight through Saturday morning.

* WHERE...Portions of central, eastern, southeast and southwest
Arkansas.

* WHEN...For the Freeze Warning, from midnight Saturday night to
9 AM CDT Sunday. For the Freeze Watch, from late tonight
through Saturday morning.

* IMPACTS...Frost and freeze conditions will kill crops, other
sensitive vegetation and possibly damage unprotected outdoor
plumbing.', 'Take steps now to protect tender plants from the cold. To prevent
freezing and possible bursting of outdoor water pipes they should
be wrapped, drained, or allowed to drip slowly. Those that have
in-ground sprinkler systems should drain them and cover above-
ground pipes to protect them from freezing.', '2023-03-17 10:07:00+02', '2023-03-18 00:00:00+02', 'ARZ042,ARZ043,ARZ044,ARZ045,ARZ046,ARZ047,ARZ052,ARZ053,ARZ054,ARZ055,ARZ056,ARZ057,ARZ062,ARZ063,ARZ064', '2023-03-17 13:48:34.069057+02'),
	(995, 'AR', 'Severe', 'Sevier; Howard; Little River; Hempstead; Nevada; McCurtain', 'Freeze Watch issued March 17 at 2:55AM CDT until March 18 at 9:00AM CDT by NWS Shreveport LA', '* WHAT...Sub-freezing temperatures as low as 31 possible.

* WHERE...In Arkansas, Sevier County, Howard County, Little
River County, Hempstead County and Nevada County. In Oklahoma,
McCurtain County.

* WHEN...From late Friday night through Saturday morning.

* IMPACTS...Frost and freeze conditions could kill crops, other
sensitive vegetation and possibly damage unprotected outdoor
plumbing.', 'Take steps now to protect tender plants from the cold. To prevent
freezing and possible bursting of outdoor water pipes they should
be wrapped, drained, or allowed to drip slowly. Those that have
in-ground sprinkler systems should drain them and cover above-
ground pipes to protect them from freezing.', '2023-03-17 09:55:00+02', '2023-03-18 01:00:00+02', 'ARZ050,ARZ051,ARZ059,ARZ060,ARZ061,OKZ077', '2023-03-17 13:48:34.069057+02'),
	(996, 'AR', 'Severe', 'Prairie, AR; White, AR; Woodruff, AR', 'Flood Warning issued March 16 at 8:46PM CDT by NWS Little Rock AR', '* WHAT...Minor flooding is occurring and minor flooding is forecast.

* WHERE...White River At Georgetown.

* WHEN...Until further notice.

* IMPACTS...At 21.0 feet, Hurricane Lake Wildlife Management Area
and Raft Creek Bottoms inundated. Roads in the bottoms are flooded.
At 22.0 feet, Farm fields and farm roads on either side of Highway
36 west of Georgetown inundated.
At 23.0 feet, Minor street flooding in Georgetown including Heath
Scott Drive and Riverside Street near the boat ramp.

* ADDITIONAL DETAILS...
- At 8:00 PM CDT Thursday the stage was 22.1 feet.
- Forecast...The river is expected to rise to a crest of 23.0
feet Wednesday evening (March 22).
- Flood stage is 21.0 feet.', ' ', '2023-03-17 03:46:00+02', '2023-03-18 04:00:00+02', 'ARC117,ARC145,ARC147', '2023-03-17 13:48:34.069057+02'),
	(997, 'AR', 'Severe', 'Calhoun, AR; Ouachita, AR', 'Flood Warning issued March 16 at 8:42PM CDT by NWS Little Rock AR', '* WHAT...Minor flooding is occurring and minor flooding is forecast.

* WHERE...Ouachita River At Camden.

* WHEN...Until further notice.

* IMPACTS...At 26.0 feet, Low lying pastures and timber land along
the river begins to flood. Sandy Beach Park at Camden starts to
flood.
At 28.0 feet, Sandy Beach Park and portions of the Riverwalk area
off of Washington Street are inundated. State Highway 7 off 79B
becomes inundated.
At 30.0 feet, State Highway 7 north of Camden floods, with detours
nearby. Portions of Sandy Beach Park will flood. Some county roads
north and east of Camden begin to flood.
At 34.0 feet, Overbank flooding closes many roads. Harmony Grove
community has flood problems at this stage. Many low lying roads
are flooding with access to some residential areas by boat only.

* ADDITIONAL DETAILS...
- At 7:30 PM CDT Thursday the stage was 33.0 feet.
- Forecast...The river is expected to rise to a crest of 34.0
feet on Tuesday morning (March 21).
- Flood stage is 26.0 feet.', ' ', '2023-03-17 03:42:00+02', '2023-03-18 03:45:00+02', 'ARC013,ARC103', '2023-03-17 13:48:34.069057+02'),
	(998, 'AR', 'Severe', 'Independence, AR; Jackson, AR; Lawrence, AR', 'Flood Warning issued March 16 at 8:39PM CDT by NWS Little Rock AR', '* WHAT...Minor flooding is occurring and minor flooding is forecast.

* WHERE...Black River At Black Rock.

* WHEN...Until further notice.

* IMPACTS...At 14.0 feet, Minor flooding begins. Farm ground along
east bank begins to flood.
At 17.0 feet, Low lying cultivated land and pastures in Lawrence,
Jackson, and Independence counties flood.
At 20.0 feet, Agricultural land is flooding along both banks of
the river in Lawrence, Independence, and Jackson counties. Minor
flooding in Powhatan Community and Courthouse State Park.

* ADDITIONAL DETAILS...
- At 8:00 PM CDT Thursday the stage was 17.7 feet.
- Forecast...The river is expected to rise to a crest of 19.5
feet by Saturday evening (March 18).
- Flood stage is 14.0 feet.', ' ', '2023-03-17 03:39:00+02', '2023-03-18 03:45:00+02', 'ARC063,ARC067,ARC075', '2023-03-17 13:48:34.069057+02'),
	(999, 'AR', 'Severe', 'Columbia, AR; Webster, LA', 'Flood Warning issued March 16 at 8:38PM CDT by NWS Shreveport LA', '* WHAT...Minor flooding is forecast.

* WHERE...Bayou Dorcheat Near Springhill.

* WHEN...Until further notice.

* IMPACTS...At 13.0 feet, Minor lowland flooding of private boat
ramps. Move livestock to higher ground.

* ADDITIONAL DETAILS...
- At 8:00 PM CDT Thursday the stage was 10.8 feet.
- Forecast...The river is expected to rise above flood stage
just after midnight tonight and continue rising to a crest of
13.0 feet Sunday evening.
- Flood stage is 11.0 feet.
- Flood History...This crest compares to a previous crest of
13.1 feet on 04/08/2012.
- http://www.weather.gov/safety/flood', ' ', '2023-03-17 03:38:00+02', '2023-03-18 03:45:00+02', 'ARC027,LAC119', '2023-03-17 13:48:34.069057+02'),
	(1000, 'AR', 'Severe', 'Prairie, AR', 'Flood Warning issued March 16 at 8:38PM CDT by NWS Little Rock AR', '* WHAT...Moderate flooding is occurring and moderate flooding is
forecast.

* WHERE...White River At Des Arc.

* WHEN...Until further notice.

* IMPACTS...At 21.0 feet, Minor flooding of farmlands within the
levees.
At 24.0 feet, Many acres of farmland flooded within the levees.
Water is backing up Bayou Des Arc and Cypress Bayou.
At 28.0 feet, Many roads are likley impacted by high water
including Horshoe Lake Road and Hill Lake Road north of
Des Arc.

* ADDITIONAL DETAILS...
- At 8:00 PM CDT Thursday the stage was 26.5 feet.
- Forecast...The river is expected to rise to a crest of 26.7
feet early Wednesday afternoon (March 22).
- Flood stage is 24.0 feet.', ' ', '2023-03-17 03:38:00+02', '2023-03-18 03:45:00+02', 'ARC117', '2023-03-17 13:48:34.069057+02'),
	(1001, 'AR', 'Severe', 'Ashley, AR; Union, AR', 'Flood Warning issued March 16 at 8:37PM CDT by NWS Shreveport LA', '* WHAT...Minor flooding is occurring and minor flooding is forecast.

* WHERE...Ouachita River At Felsenthal Lock and Dam.

* WHEN...Until further notice.

* ADDITIONAL DETAILS...
- At 7:30 PM CDT Thursday the stage was 74.2 feet.
- Recent Activity...The maximum river stage in the 24 hours
ending at 7:30 PM CDT Thursday was 74.2 feet.
- Forecast...The river is expected to rise to 76.0 feet
Tuesday, March 28. Additional rises are possible thereafter.
- Flood stage is 70.0 feet.
- Flood History...This crest compares to a previous crest of
77.1 feet on 03/12/2021.
- http://www.weather.gov/safety/flood', ' ', '2023-03-17 03:37:00+02', '2023-03-18 03:45:00+02', 'ARC003,ARC139', '2023-03-17 13:48:34.069057+02'),
	(1002, 'AR', 'Severe', 'White, AR; Woodruff, AR', 'Flood Warning issued March 16 at 8:36PM CDT by NWS Little Rock AR', '* WHAT...Minor flooding is occurring and minor flooding is forecast.

* WHERE...White River At Augusta.

* WHEN...Until further notice.

* IMPACTS...At 26.0 feet, Farm ground along the river in White and
Woodruff counties begin to flood. Seasonal agricultural impacts.
At 28.0 feet, Roads in Henry Gray Hurricane Lake Wildlife
Management area flooded. Thousands of acres of cultivated land
flooded in White and Woodruff counties.
At 30.0 feet, Thousands of acres of farm ground flooded. County
roads on both sides of the river are flooded, including County
Road 871 and 899.
At 32.0 feet, Thousands of acres of cropland and farm roads are
flooded in White and Woodruff counties. Water is isolating homes
and camps along the river in White and Woodruff counties.

* ADDITIONAL DETAILS...
- At 8:00 PM CDT Thursday the stage was 32.4 feet.
- Forecast...The river is expected to rise to a crest of 33.0
feet by Tuesday morning (March 21).
- Flood stage is 26.0 feet.', ' ', '2023-03-17 03:36:00+02', '2023-03-18 03:45:00+02', 'ARC145,ARC147', '2023-03-17 13:48:34.069057+02'),
	(1003, 'AR', 'Severe', 'Arkansas, AR; Monroe, AR', 'Flood Warning issued March 16 at 8:35PM CDT by NWS Little Rock AR', '* WHAT...Minor flooding is occurring and minor flooding is forecast.

* WHERE...White River At Clarendon.

* WHEN...Until further notice.

* IMPACTS...At 26.0 feet, River flows in many side channels and
creates islands between the river and sloughs and creeks. Flooding
of cropland and timber is occurring. Portions of the National
Wildlife Refuge downstream of Clarendon flooding.
At 28.0 feet, Flooding of cropland and timber is occurring. Roads
to homes and cabins in lower Maddox Bay area off Highway 146 south
of Clarendon impassible.

* ADDITIONAL DETAILS...
- At 8:00 PM CDT Thursday the stage was 28.9 feet.
- Forecast...The river will rise to a crest of 29.0 feet by
Monday morning (March 20).
- Flood stage is 26.0 feet.', ' ', '2023-03-17 03:35:00+02', '2023-03-18 03:45:00+02', 'ARC001,ARC095', '2023-03-17 13:48:34.069057+02'),
	(1004, 'AR', 'Severe', 'Bradley, AR; Calhoun, AR; Union, AR', 'Flood Warning issued March 16 at 8:32PM CDT by NWS Little Rock AR', '* WHAT...Minor flooding is occurring and minor flooding is forecast.

* WHERE...Ouachita River At Thatcher L&D.

* WHEN...Until further notice.

* IMPACTS...At 79.0 feet, Property in low lying areas needs to be
removed. Access roads to oil and gas rigs may be flooded. Levee
gates should be closed before the river reaches 80 feet. There is
minor flooding at this level.
At 80.0 feet, Minor flooding occurs at this level. Levee gates
should be closed to prevent the river from backing into Calion
Lake. Access to oil and gas rigs and to timber is flooded. There
is wide coverage of flooding in the river bottoms.
At 83.0 feet, Access to oil and gas rigs and to timber is flooded.
Calhoun County Road 131 is completely under water leading to old
Lock 8 river access.
At 85.0 feet, There may be some County roads along the river
flooded, requiring lengthy detours. River is high and swift,
boaters should be very cautious. Access to many oil and gas rigs
will be by boat only. Levee gates should be closed.

* ADDITIONAL DETAILS...
- At 7:30 PM CDT Thursday the stage was 85.9 feet.
- Forecast...The river is expected to remain steady above flood
stage at around 86.0 feet.
- Flood stage is 79.0 feet.', ' ', '2023-03-17 03:32:00+02', '2023-03-18 03:45:00+02', 'ARC011,ARC013,ARC139', '2023-03-17 13:48:34.069057+02'),
	(1005, 'AR', 'Severe', 'Jackson, AR; Woodruff, AR', 'Flood Warning issued March 16 at 8:29PM CDT by NWS Little Rock AR', '* WHAT...Minor flooding is occurring and minor flooding is forecast.

* WHERE...Cache River Near Patterson.

* WHEN...Until further notice.

* IMPACTS...At 8.0 feet, Low swampy timberland along the river
begins to flood.
At 9.0 feet, Low swampy timberland along the river begins to
flood. Flood gates should be closed and equipment moved out of the
low grounds along the river and tributaries.
At 10.0 feet, Pastureland and cropland not protected by levees in
Jackson and Woodruff counties affected. Water is over portions of
State Highway 37 and deep along the shoulders of State Highway 18
near Grubbs. Water over portions of Woodruff County Road 775 north
of State Highway 260.

* ADDITIONAL DETAILS...
- At 8:15 PM CDT Thursday the stage was 9.6 feet.
- Forecast...The river is expect to fall to 9.4 feet on
Saturday (March 18), but remain above flood stage.
- Flood stage is 9.0 feet.', ' ', '2023-03-17 03:29:00+02', '2023-03-18 03:30:00+02', 'ARC067,ARC147', '2023-03-17 13:48:34.069057+02'),
	(1006, 'AR', 'Severe', 'Columbia, AR; Webster, LA', 'Flood Warning issued March 13 at 10:17PM CDT until March 17 at 7:00PM CDT by NWS Shreveport LA', '* WHAT...Minor flooding is occurring and minor flooding is forecast.

* WHERE...Bayou Dorcheat Near Springhill.

* WHEN...Until Friday evening.

* IMPACTS...At 11.0 feet, Expect minor lowland flooding.

* ADDITIONAL DETAILS...
- At 10:00 PM CDT Monday the stage was 11.7 feet.
- Recent Activity...The maximum river stage in the 24 hours
ending at 10:00 PM CDT Monday was 11.9 feet.
- Forecast...The river is expected to fall below flood stage
early Friday morning and continue falling to 10.5 feet
Saturday evening.
- Flood stage is 11.0 feet.
- Flood History...This crest compares to a previous crest of
11.8 feet on 03/27/2017.
- http://www.weather.gov/safety/flood', ' ', '2023-03-14 05:17:00+02', '2023-03-15 05:30:00+02', 'ARC027,LAC119', '2023-03-17 13:48:34.069057+02'),
	(1007, 'AR', 'Severe', 'Randolph, AR', 'Flood Warning issued March 13 at 7:57PM CDT until March 17 at 7:00AM CDT by NWS Little Rock AR', '* WHAT...Minor flooding is occurring and minor flooding is forecast.

* WHERE...Black River At Pocahontas.

* WHEN...Until Friday morning.

* IMPACTS...At 17.0 feet, Agricultural lands along the river east
and south of Pocahontas will be impacted by high water. Equipment
and livestock should be moved to higher ground.

* ADDITIONAL DETAILS...
- At 7:00 PM CDT Monday the stage was 18.5 feet.
- Forecast...The river is expected to fall below flood stage
early Thursday morning and continue falling to 15.5 feet
Saturday evening.
- Flood stage is 17.0 feet.', ' ', '2023-03-14 02:57:00+02', '2023-03-15 03:00:00+02', 'ARC121', '2023-03-17 13:48:34.069057+02'),
	(1008, 'CA', 'Severe', 'Monterey, CA', 'Flood Warning issued March 16 at 3:12PM PDT by NWS San Francisco CA', '* WHAT...Minor flooding is forecast to continue. The river will
begin rising once again tonight reaching Moderate flood stage
Friday afternoon.

* WHERE...Salinas River near Spreckels.

* WHEN...Until further notice.

* IMPACTS...At 23.0 feet, A few farm residences will begin to flood
near the Salinas River along the reach of the gage. River Road
will begin to flood near Spreckels.
...At 24.0 feet, Significant flooding of the lowest portions of
agricultural land begins within the reach of the gage. River Road
and Spreckels Boulevard begin to flood.
...At 26.0 feet, Moderate flooding of agricultural land and lower
portions of Soledad, Gonzales, Chualar, Spence and Spreckels.
Primary and secondary roads begin to flood within the reach.
Highway 68 begins to flood. Levees in danger of breaching along
the reach. At least 20,000 acres of farm land inundated in the
Salinas Valley.

* ADDITIONAL DETAILS...
- At 2:00 PM PDT Thursday the stage was 23.4 feet.
- Recent Activity...The maximum river stage in the 24 hours
ending at 2:00 PM PDT Thursday was 23.4 feet.
- Forecast...The river is expected to begin rising again
tonight, reaching Moderate flood stage tomorrow afternoon.
Current forecast has the river cresting at 26.1 feet tomorrow
evening.
- Flood stage is 23.0 feet.
Moderate flood stage is 26.0 feet.
- Flood History...This crest compares to a previous crest of
26.5 feet on 02/26/1969.
- http://www.weather.gov/safety/flood', ' ', '2023-03-17 00:12:00+02', '2023-03-17 20:15:00+02', 'CAC053', '2023-03-17 13:48:34.069057+02'),
	(1009, 'CA', 'Severe', 'Plumas, CA', 'Flood Warning issued March 16 at 3:09PM PDT until March 17 at 11:00PM PDT by NWS Reno NV', '* WHAT...Moderate flooding is occurring and minor flooding is
forecast.

* WHERE...Middle Fork Feather River Near Portola.

* WHEN...Until late tomorrow evening.

* IMPACTS...At 4853.5 feet, Moderate Flood Stage. Flooding of
lowlands, structures, and roads from Beckwourth to Clio. Several
low lying structures along river in Portola flood. Evacuation of
homes on south end of West Street may be necessary.  Highway 89
near Clio likely flooded.  Impacts below Portola influenced by
magnitude of tributary flows, especially Sulphur Creek. Similar
level to 1/9/2017.

* ADDITIONAL DETAILS...
- At 2:30 PM PDT Thursday the stage was 4853.5 feet.
- Recent Activity...The maximum river stage in the 24 hours
ending at 2:30 PM PDT Thursday was 4854.4 feet.
- Forecast...The river is expected to fall below flood stage
late tonight and continue falling to 4850.6 feet early
Tuesday morning.
- Flood stage is 4852.5 feet.
- Flood History...This crest compares to a previous crest of
4853.6 feet on 03/27/1971.
- http://www.weather.gov/safety/flood', ' ', '2023-03-17 00:09:00+02', '2023-03-18 00:15:00+02', 'CAC063', '2023-03-17 13:48:34.069057+02'),
	(1010, 'CA', 'Severe', 'Merced, CA', 'Flood Warning issued March 16 at 9:11AM PDT by NWS Hanford CA', '* WHAT...Minor flooding is forecast.

* WHERE...Merced River at Stevinson.

* WHEN...Until further notice.

* IMPACTS...At 70.5 feet, Water is up to the maintenance building in
Hagaman Park.

* ADDITIONAL DETAILS...
- At 8:00 AM PDT Thursday the stage was 70.9 feet.
- Forecast...The river is expected to rise above flood stage
late this morning and continue rising to 71.2 feet just after
midnight tonight. Additional rises are possible thereafter.
- Flood stage is 71.0 feet.
- Flood History...This crest compares to a previous crest of
70.5 feet on 03/21/2011.
- http://www.weather.gov/safety/flood', ' ', '2023-03-16 18:11:00+02', '2023-03-17 19:00:00+02', 'CAC047', '2023-03-17 13:48:34.069057+02'),
	(1011, 'CO', 'Severe', 'Northern Sangre de Cristo Mountains Between 8500 And 11000 Ft; Northern Sangre de Cristo Mountains above 11000 Ft; Southern Sangre De Cristo Mountains Between 7500 and 11000 Ft; Southern Sangre De Cristo Mountains Above 11000 Ft; Wet Mountains between 6300 and 10000Ft; Wet Mountains above 10000 Ft', 'Winter Storm Watch issued March 14 at 3:49AM MDT until March 17 at 6:00AM MDT by NWS Pueblo CO', '* WHAT...Heavy snow possible. Total snow accumulations of 6 to 16
inches though projected snowfall accumulations are still prone
to change. Winds could gust as high as 60 mph.

* WHERE...The Sangre De Cristo and Wet Mountains

* WHEN...From Wednesday evening through late Thursday night.

* IMPACTS...Travel could be very difficult. Patchy blowing snow
could significantly reduce visibility. The heaviest snow will
fall on Thursday.

* ADDITIONAL DETAILS...The heaviest snow is most likely to impact
the southern Sangre De Cristo mountains.', 'Monitor the latest forecasts for updates on this situation.', '2023-03-14 11:49:00+02', '2023-03-14 20:00:00+02', 'COZ072,COZ073,COZ074,COZ075,COZ079,COZ080', '2023-03-17 13:48:34.069057+02'),
	(1012, 'GA', 'Severe', 'Rabun; Habersham', 'Freeze Watch issued March 17 at 3:37AM EDT until March 18 at 10:00AM EDT by NWS Greenville-Spartanburg SC', '* WHAT...Sub-freezing temperatures as low as 30 possible.

* WHERE...Rabun and Habersham Counties.

* WHEN...From late tonight through Saturday morning.

* IMPACTS...Frost and freeze conditions could kill crops, other
sensitive vegetation and possibly damage unprotected outdoor
plumbing.', 'Take steps now to protect tender plants from the cold. To prevent
freezing and possible bursting of outdoor water pipes they should
be wrapped, drained, or allowed to drip slowly. Those that have
in-ground sprinkler systems should drain them and cover above-
ground pipes to protect them from freezing.', '2023-03-17 09:37:00+02', '2023-03-17 18:00:00+02', 'GAZ010,GAZ017', '2023-03-17 13:48:34.069057+02'),
	(1013, 'GA', 'Severe', 'Dade; Walker; Catoosa; Whitfield; Murray; Fannin; Gilmer; Union; Towns; Chattooga; Gordon; Pickens; Dawson; Lumpkin; White; Floyd; Bartow; Cherokee; Polk; Paulding; Cobb; Haralson; Carroll; Douglas', 'Freeze Watch issued March 17 at 3:08AM EDT until March 18 at 11:00AM EDT by NWS Peachtree City GA', '* WHAT...Sub-freezing temperatures as low as 29 possible.

* WHERE...Portions of north central, northeast and northwest
Georgia.

* WHEN...From late tonight through Saturday morning.

* IMPACTS...Frost and freeze conditions could kill crops, other
sensitive vegetation and possibly damage unprotected outdoor
plumbing.', 'Take steps now to protect tender plants from the cold. To prevent
freezing and possible bursting of outdoor water pipes they should
be wrapped, drained, or allowed to drip slowly. Those that have
in-ground sprinkler systems should drain them and cover above-
ground pipes to protect them from freezing.', '2023-03-17 09:08:00+02', '2023-03-17 22:00:00+02', 'GAZ001,GAZ002,GAZ003,GAZ004,GAZ005,GAZ006,GAZ007,GAZ008,GAZ009,GAZ011,GAZ012,GAZ013,GAZ014,GAZ015,GAZ016,GAZ019,GAZ020,GAZ021,GAZ030,GAZ031,GAZ032,GAZ041,GAZ042,GAZ043', '2023-03-17 13:48:34.069057+02'),
	(1014, 'ID', 'Severe', 'Cassia, ID', 'Flood Warning issued March 16 at 12:36PM MDT by NWS Pocatello ID', '* WHAT...Minor flooding is occurring.

* WHERE...Raft River above One Mile Creek.

* WHEN...Until further notice.

* IMPACTS...At 6.5 feet, or 206 cfs... Scattered to widespread areas
of ranch and lowland crop flooding near Yale Road and Cassia Creek
Farms Bridge, Beet Dump Road and Nellies Lane; Idahome Road and
2050 South; Fields to the east of Malta - 1500 S Malta - 4th St. N
Cassia Creek. Other low-lying areas between Malta and Yale Road.

* ADDITIONAL DETAILS...
- At 12:15 PM MDT Thursday, March 16 the stage was 6.5 feet.
- Recent Activity...The maximum river stage in the 24 hours
ending at 12:15 PM MDT Thursday was 7.0 feet.
- Forecast...No forecast is available for this location.
- Flood stage is 6.5 feet.
- Flood History...This crest compares to a previous crest of
6.7 feet on 05/24/2011.
- http://www.weather.gov/safety/flood', ' ', '2023-03-16 20:36:00+02', '2023-03-18 00:45:00+02', 'IDC031', '2023-03-17 13:48:34.069057+02'),
	(1015, 'IL', 'Severe', 'Brown, IL; Cass, IL; Morgan, IL; Schuyler, IL', 'Flood Warning issued March 16 at 9:07PM CDT by NWS Lincoln IL', '* WHAT...Minor flooding is occurring and minor flooding is forecast.

* WHERE...Illinois River at Beardstown.

* WHEN...Until further notice.

* IMPACTS...At 14.4 feet, Seepage problems begin in the Coal Creek
Drainage and Levee District.

* ADDITIONAL DETAILS...
- At 9:45 AM CDT Thursday the stage was 16.0 feet.
- Recent Activity...The maximum river stage in the 24 hours
ending at 9:45 AM CDT Thursday was 16.2 feet.
- Forecast...The river is expected to fall to 15.1 feet
Thursday morning.
- Flood stage is 14.0 feet.
- http://www.weather.gov/safety/flood', ' ', '2023-03-17 04:07:00+02', '2023-03-17 20:15:00+02', 'ILC009,ILC017,ILC137,ILC169', '2023-03-17 13:48:34.069057+02'),
	(1016, 'IL', 'Severe', 'Cass, IL; Fulton, IL; Mason, IL', 'Flood Warning issued March 16 at 9:07PM CDT by NWS Lincoln IL', '* WHAT...Minor flooding is occurring and minor flooding is forecast.

* WHERE...Illinois River near Havana.

* WHEN...Until further notice.

* IMPACTS...At 14.0 feet, Minor flooding begins to agricultural
areas not protected by levees.

* ADDITIONAL DETAILS...
- At 9:45 AM CDT Thursday the stage was 15.6 feet.
- Recent Activity...The maximum river stage in the 24 hours
ending at 9:45 AM CDT Thursday was 15.9 feet.
- Forecast...The river is expected to fall to 15.0 feet
Thursday morning.
- Flood stage is 14.0 feet.
- http://www.weather.gov/safety/flood', ' ', '2023-03-17 04:07:00+02', '2023-03-17 20:15:00+02', 'ILC017,ILC057,ILC125', '2023-03-17 13:48:34.069057+02'),
	(1017, 'IL', 'Severe', 'Crawford, IL; Lawrence, IL; Knox, IN; Sullivan, IN', 'Flood Warning issued March 16 at 9:18PM EDT until March 21 at 3:30PM EDT by NWS Indianapolis IN', '* WHAT...Minor flooding is occurring and minor flooding is forecast.

* WHERE...Wabash River at Riverton.

* WHEN...Until early Tuesday afternoon.

* IMPACTS...At 16.0 feet, Some agricultural lands underwater.  A few
rural roads in Crawford County, Illinois close as water backs up
Minnow Slough.  High water affects campground at Leaverton Park in
Palestine.  A few private roads near the Gill Township levee in
Sullivan County may flood.  Water level is at the top of most
makeshift levees.

* ADDITIONAL DETAILS...
- At 8:00 PM CDT Thursday /9:00 PM EDT Thursday/ the stage was
15.2 feet.
- Recent Activity...The maximum river stage in the 24 hours
ending at 8:00 PM CDT Thursday /9:00 PM EDT Thursday/ was
17.3 feet.
- Forecast...The river will fall below flood stage late this
evening to 13.3 feet early Saturday afternoon. It will then
rise above flood stage early Sunday morning to 15.9 feet
early Monday morning. It will fall below flood stage again
early Tuesday morning.
- Flood stage is 15.0 feet.
- http://www.weather.gov/safety/flood', ' ', '2023-03-17 03:18:00+02', '2023-03-17 18:30:00+02', 'ILC033,ILC101,INC083,INC153', '2023-03-17 13:48:34.069057+02'),
	(1018, 'IL', 'Severe', 'Rock Island; Henry', 'Flood Watch issued March 16 at 3:36PM CDT until March 22 at 3:00AM CDT by NWS Quad Cities IA IL', '* WHAT...Flooding is possible.

* WHERE...Rock River at Moline.

* WHEN...From late Saturday night to early Wednesday morning.

* IMPACTS...At 12.5 feet, Water affects some residences in the lower
Friendship Farm area. 60th St is under water south of the Green
Valley Sports Complex. 56th St along the north side of the river
is under water.

* ADDITIONAL DETAILS...
- At 2:30 PM CDT Thursday the stage was 11.0 feet.
- Forecast...Flood stage may be reached early Sunday morning.
- Flood stage is 12.0 feet.', ' ', '2023-03-16 22:36:00+02', '2023-03-17 06:45:00+02', 'ILZ015,ILZ016', '2023-03-17 13:48:34.069057+02'),
	(1019, 'IL', 'Severe', 'Gallatin, IL; Wabash, IL; White, IL; Gibson, IN; Posey, IN', 'Flood Warning issued March 11 at 10:08AM CST until March 17 at 12:00PM CDT by NWS Paducah KY', '* WHAT...Minor flooding is occurring and minor flooding is forecast.

* WHERE...Wabash River at New Harmony.

* WHEN...Until early Friday afternoon.

* ADDITIONAL DETAILS...
- At 9:30 AM CST Saturday the stage was 17.0 feet.
- Recent Activity...The maximum river stage in the 24 hours
ending at 9:30 AM CST Saturday was 17.0 feet.
- Forecast...The river is expected to rise to a crest of 17.7
feet early Monday afternoon. It will then fall below flood
stage Friday.
- Flood stage is 15.0 feet.
- http://www.weather.gov/safety/flood', ' ', '2023-03-11 18:08:00+02', '2023-03-12 20:15:00+02', 'ILC059,ILC185,ILC193,INC051,INC129', '2023-03-17 13:48:34.069057+02'),
	(1020, 'IL', 'Severe', 'Gallatin, IL; Wabash, IL; White, IL; Gibson, IN; Posey, IN', 'Flood Warning issued March 10 at 10:17AM CST until March 17 at 3:24PM CDT by NWS Paducah KY', '* WHAT...Minor flooding is occurring and minor flooding is forecast.

* WHERE...Wabash River at New Harmony.

* WHEN...Until Friday afternoon.

* IMPACTS...At 19.0 feet, Harmonie State Park is closed. Surrounding
bottomland is flooded.

* ADDITIONAL DETAILS...
- At 9:30 AM CST Friday the stage was 16.8 feet.
- Forecast...The river is expected to rise to a crest of 17.5
feet Sunday evening. It will then fall below flood stage late
Friday morning...March 17th.
- Flood stage is 15.0 feet.
- http://www.weather.gov/safety/flood', ' ', '2023-03-10 18:17:00+02', '2023-03-11 04:00:00+02', 'ILC059,ILC185,ILC193,INC051,INC129', '2023-03-17 13:48:34.069057+02'),
	(1021, 'IN', 'Severe', 'Noble, IN', 'Flood Warning issued March 16 at 9:48PM EDT until March 20 at 8:00PM EDT by NWS Northern Indiana', '* WHAT...Minor flooding is occurring and minor flooding is forecast.

* WHERE...North Branch Elkhart River at Cosperville.

* WHEN...Until Monday evening.

* IMPACTS...At 6.0 feet, Water approaches some houses around Skinner
Lake, especially along State Road 8.

* ADDITIONAL DETAILS...
- At 9:30 PM EDT Thursday the stage was 6.0 feet.
- Recent Activity...The maximum river stage in the 24 hours
ending at 9:30 PM EDT Thursday was 6.1 feet.
- Forecast...The river is expected to rise to a crest of 6.1
feet tomorrow evening. It will then fall below flood stage
early Monday afternoon.
- Flood stage is 6.0 feet.
- http://www.weather.gov/safety/flood', ' ', '2023-03-17 03:48:00+02', '2023-03-17 22:00:00+02', 'INC113', '2023-03-17 13:48:34.069057+02'),
	(1022, 'IN', 'Severe', 'Crawford, IL; Lawrence, IL; Knox, IN; Sullivan, IN', 'Flood Warning issued March 16 at 9:18PM EDT until March 21 at 3:30PM EDT by NWS Indianapolis IN', '* WHAT...Minor flooding is occurring and minor flooding is forecast.

* WHERE...Wabash River at Riverton.

* WHEN...Until early Tuesday afternoon.

* IMPACTS...At 16.0 feet, Some agricultural lands underwater.  A few
rural roads in Crawford County, Illinois close as water backs up
Minnow Slough.  High water affects campground at Leaverton Park in
Palestine.  A few private roads near the Gill Township levee in
Sullivan County may flood.  Water level is at the top of most
makeshift levees.

* ADDITIONAL DETAILS...
- At 8:00 PM CDT Thursday /9:00 PM EDT Thursday/ the stage was
15.2 feet.
- Recent Activity...The maximum river stage in the 24 hours
ending at 8:00 PM CDT Thursday /9:00 PM EDT Thursday/ was
17.3 feet.
- Forecast...The river will fall below flood stage late this
evening to 13.3 feet early Saturday afternoon. It will then
rise above flood stage early Sunday morning to 15.9 feet
early Monday morning. It will fall below flood stage again
early Tuesday morning.
- Flood stage is 15.0 feet.
- http://www.weather.gov/safety/flood', ' ', '2023-03-17 03:18:00+02', '2023-03-17 18:30:00+02', 'ILC033,ILC101,INC083,INC153', '2023-03-17 13:48:34.069057+02'),
	(1023, 'IN', 'Severe', 'Noble, IN', 'Flood Warning issued March 15 at 8:41AM EDT until March 22 at 8:00AM EDT by NWS Northern Indiana', '* WHAT...Minor flooding is occurring and minor flooding is forecast.

* WHERE...North Branch Elkhart River at Cosperville.

* WHEN...Until Wednesday morning.

* IMPACTS...At 6.5 feet, Water is starting to approach foundations
on Waldron Lake Dr, Woodland Drive, and the south end of
Steinbarger Lake Rd.

* ADDITIONAL DETAILS...
- At 8:30 AM EDT Wednesday the stage was 6.2 feet.
- Forecast...The river is expected to remain nearly steady in
minor flood through this weekend.
- Flood stage is 6.0 feet.
- http://www.weather.gov/safety/flood', ' ', '2023-03-15 14:41:00+02', '2023-03-16 08:45:00+02', 'INC113', '2023-03-17 13:48:34.069057+02'),
	(1024, 'IN', 'Severe', 'Gallatin, IL; Wabash, IL; White, IL; Gibson, IN; Posey, IN', 'Flood Warning issued March 11 at 10:08AM CST until March 17 at 12:00PM CDT by NWS Paducah KY', '* WHAT...Minor flooding is occurring and minor flooding is forecast.

* WHERE...Wabash River at New Harmony.

* WHEN...Until early Friday afternoon.

* ADDITIONAL DETAILS...
- At 9:30 AM CST Saturday the stage was 17.0 feet.
- Recent Activity...The maximum river stage in the 24 hours
ending at 9:30 AM CST Saturday was 17.0 feet.
- Forecast...The river is expected to rise to a crest of 17.7
feet early Monday afternoon. It will then fall below flood
stage Friday.
- Flood stage is 15.0 feet.
- http://www.weather.gov/safety/flood', ' ', '2023-03-11 18:08:00+02', '2023-03-12 20:15:00+02', 'ILC059,ILC185,ILC193,INC051,INC129', '2023-03-17 13:48:34.069057+02'),
	(1025, 'IN', 'Severe', 'Gallatin, IL; Wabash, IL; White, IL; Gibson, IN; Posey, IN', 'Flood Warning issued March 10 at 10:17AM CST until March 17 at 3:24PM CDT by NWS Paducah KY', '* WHAT...Minor flooding is occurring and minor flooding is forecast.

* WHERE...Wabash River at New Harmony.

* WHEN...Until Friday afternoon.

* IMPACTS...At 19.0 feet, Harmonie State Park is closed. Surrounding
bottomland is flooded.

* ADDITIONAL DETAILS...
- At 9:30 AM CST Friday the stage was 16.8 feet.
- Forecast...The river is expected to rise to a crest of 17.5
feet Sunday evening. It will then fall below flood stage late
Friday morning...March 17th.
- Flood stage is 15.0 feet.
- http://www.weather.gov/safety/flood', ' ', '2023-03-10 18:17:00+02', '2023-03-11 04:00:00+02', 'ILC059,ILC185,ILC193,INC051,INC129', '2023-03-17 13:48:34.069057+02'),
	(1026, 'IA', 'Severe', 'Lyon; Osceola; Dickinson; Sioux; O''Brien; Clay; Plymouth; Cherokee; Buena Vista; Woodbury; Ida; Lincoln; Lyon; Murray; Cottonwood; Nobles; Jackson; Pipestone; Rock; Dixon; Dakota; Brookings; Gregory; Miner; Lake; Moody; Davison; Hanson; McCook; Minnehaha; Charles Mix; Douglas; Hutchinson; Turner; Lincoln; Bon Homme; Yankton; Clay; Union', 'Winter Storm Watch issued March 15 at 3:29AM CDT until March 17 at 7:00AM CDT by NWS Sioux Falls SD', '* WHAT...Blizzard conditions possible. Total snow accumulations of
3 to 7 inches and ice accumulations of a light glaze possible.
Winds could gust as high as 50 mph.

* WHERE...Portions of northwest and west central Iowa, southwest
Minnesota, northeast Nebraska and east central, south central
and southeast South Dakota.

* WHEN...From late tonight through Friday morning.

* IMPACTS...Travel could be very difficult. Patchy blowing snow
could significantly reduce visibility. The hazardous conditions
could impact the morning or evening commute. Gusty winds could
bring down tree branches.', 'Prepare for possible blizzard conditions. Continue to monitor the
latest forecasts for updates on this situation.', '2023-03-15 10:29:00+02', '2023-03-15 18:30:00+02', 'IAZ001,IAZ002,IAZ003,IAZ012,IAZ013,IAZ014,IAZ020,IAZ021,IAZ022,IAZ031,IAZ032,MNZ071,MNZ072,MNZ080,MNZ081,MNZ089,MNZ090,MNZ097,MNZ098,NEZ013,NEZ014,SDZ040,SDZ050,SDZ054,SDZ055,SDZ056,SDZ059,SDZ060,SDZ061,SDZ062,SDZ063,SDZ064,SDZ065,SDZ066,SDZ067,SDZ068,SDZ069,SDZ070,SDZ071', '2023-03-17 13:48:34.069057+02'),
	(1027, 'LA', 'Severe', 'Ashley; Chicot; Morehouse; West Carroll; East Carroll; Bolivar; Sunflower; Leflore; Grenada; Carroll; Montgomery; Webster; Clay; Lowndes; Choctaw; Oktibbeha; Washington; Humphreys; Holmes; Attala; Winston; Noxubee; Issaquena; Sharkey; Yazoo; Madison; Leake; Neshoba; Kemper; Warren; Hinds; Rankin; Scott; Newton; Lauderdale', 'Freeze Watch issued March 17 at 3:31AM CDT until March 19 at 10:00AM CDT by NWS Jackson MS', '* WHAT...Sub-freezing temperatures as low as 28 possible.

* WHERE...Portions of southeast Arkansas, northeast Louisiana and
central Mississippi.

* WHEN...From late Saturday night through Sunday morning.

* IMPACTS...Frost and freeze conditions could kill crops, other
sensitive vegetation and possibly damage unprotected outdoor
plumbing.', 'Take steps now to protect tender plants from the cold. To prevent
freezing and possible bursting of outdoor water pipes they should
be wrapped, drained, or allowed to drip slowly. Those that have
in-ground sprinkler systems should drain them and cover above-
ground pipes to protect them from freezing.', '2023-03-17 10:31:00+02', '2023-03-17 18:45:00+02', 'ARZ074,ARZ075,LAZ007,LAZ008,LAZ009,MSZ018,MSZ019,MSZ025,MSZ026,MSZ027,MSZ028,MSZ029,MSZ030,MSZ031,MSZ032,MSZ033,MSZ034,MSZ035,MSZ036,MSZ037,MSZ038,MSZ039,MSZ040,MSZ041,MSZ042,MSZ043,MSZ044,MSZ045,MSZ046,MSZ047,MSZ048,MSZ049,MSZ050,MSZ051,MSZ052', '2023-03-17 13:48:34.069057+02'),
	(1028, 'LA', 'Severe', 'Concordia, LA; Adams, MS; Wilkinson, MS', 'Flood Warning issued March 16 at 8:56PM CDT until March 20 at 7:00AM CDT by NWS Jackson MS', '* WHAT...Minor flooding is occurring and minor flooding is forecast.

* WHERE...Mississippi River At Natchez.

* WHEN...Until Monday morning.

* IMPACTS...At 48.0 feet, Carthage Point Road becomes impassable.

* ADDITIONAL DETAILS...
- At 8:00 PM CDT Thursday the stage was 48.4 feet.
- Forecast...The river is expected to rise to a crest of 48.5
feet just after midnight tonight.
- Flood stage is 48.0 feet.', ' ', '2023-03-17 03:56:00+02', '2023-03-17 16:00:00+02', 'LAC029,MSC001,MSC157', '2023-03-17 13:48:34.069057+02'),
	(1029, 'LA', 'Severe', 'Columbia, AR; Webster, LA', 'Flood Warning issued March 16 at 8:38PM CDT by NWS Shreveport LA', '* WHAT...Minor flooding is forecast.

* WHERE...Bayou Dorcheat Near Springhill.

* WHEN...Until further notice.

* IMPACTS...At 13.0 feet, Minor lowland flooding of private boat
ramps. Move livestock to higher ground.

* ADDITIONAL DETAILS...
- At 8:00 PM CDT Thursday the stage was 10.8 feet.
- Forecast...The river is expected to rise above flood stage
just after midnight tonight and continue rising to a crest of
13.0 feet Sunday evening.
- Flood stage is 11.0 feet.
- Flood History...This crest compares to a previous crest of
13.1 feet on 04/08/2012.
- http://www.weather.gov/safety/flood', ' ', '2023-03-17 03:38:00+02', '2023-03-18 03:45:00+02', 'ARC027,LAC119', '2023-03-17 13:48:34.069057+02'),
	(1030, 'LA', 'Severe', 'Bossier, LA; Webster, LA', 'Flood Warning issued March 16 at 8:37PM CDT by NWS Shreveport LA', 'RRB

* WHAT...Minor flooding is occurring and minor flooding is forecast.

* WHERE...Bodcau Bayou At Bayou Bodcau Lake.

* WHEN...Until further notice.

* ADDITIONAL DETAILS...
- At 8:00 PM CDT Thursday the stage was 174.3 feet.
- Recent Activity...The maximum river stage in the 24 hours
ending at 8:00 PM CDT Thursday was 174.5 feet.
- Forecast...The river is expected to rise to 175.0 feet early
Thursday morning. Additional rises are possible thereafter.
- Flood stage is 172.0 feet.
- Flood History...This crest compares to a previous crest of
175.0 feet on 05/29/1968.
- http://www.weather.gov/safety/flood', ' ', '2023-03-17 03:37:00+02', '2023-03-18 03:45:00+02', 'LAC015,LAC119', '2023-03-17 13:48:34.069057+02'),
	(1031, 'LA', 'Severe', 'East Baton Rouge, LA; Pointe Coupee, LA; West Feliciana, LA', 'Flood Warning issued March 16 at 7:22PM CDT until March 25 at 4:00AM CDT by NWS New Orleans LA', '* WHAT...Minor flooding is occurring and minor flooding is forecast.

* WHERE...Mississippi River At Red River Landing.

* WHEN...Until Saturday, March 25.

* IMPACTS...At 51.0 feet, All river islands along the reach from Red
River Landing to Baton Rouge will be inundated. Recreational camps
and river bottom farm land will be under water.

* ADDITIONAL DETAILS...
- At 6:00 PM CDT Thursday the stage was 51.1 feet.
- Forecast...The river is expected to rise to a crest of 51.5
feet early Saturday afternoon. It will then fall below flood
stage Friday, March 24.
- Flood stage is 48.0 feet.
- Flood History...This crest compares to a previous crest of
51.5 feet on 06/11/1933.
- http://www.weather.gov/safety/flood', ' ', '2023-03-17 02:22:00+02', '2023-03-17 20:30:00+02', 'LAC033,LAC077,LAC125', '2023-03-17 13:48:34.069057+02'),
	(1032, 'LA', 'Severe', 'Concordia, LA; Adams, MS; Wilkinson, MS', 'Flood Warning issued March 14 at 8:24PM CDT until March 20 at 10:00AM CDT by NWS Jackson MS', '* WHAT...Minor flooding is forecast.

* WHERE...Mississippi River At Natchez.

* WHEN...From Wednesday afternoon to late Monday morning.

* IMPACTS...At 48.0 feet, Carthage Point Road becomes impassable.

* ADDITIONAL DETAILS...
- At 8:00 PM CDT Tuesday the stage was 47.7 feet.
- Forecast...The river is expected to rise above flood stage
early tomorrow afternoon to a crest of 48.5 feet early Friday
morning.
- Flood stage is 48.0 feet.', ' ', '2023-03-15 03:24:00+02', '2023-03-15 15:30:00+02', 'LAC029,MSC001,MSC157', '2023-03-17 13:48:34.069057+02'),
	(1033, 'LA', 'Severe', 'Columbia, AR; Webster, LA', 'Flood Warning issued March 13 at 10:17PM CDT until March 17 at 7:00PM CDT by NWS Shreveport LA', '* WHAT...Minor flooding is occurring and minor flooding is forecast.

* WHERE...Bayou Dorcheat Near Springhill.

* WHEN...Until Friday evening.

* IMPACTS...At 11.0 feet, Expect minor lowland flooding.

* ADDITIONAL DETAILS...
- At 10:00 PM CDT Monday the stage was 11.7 feet.
- Recent Activity...The maximum river stage in the 24 hours
ending at 10:00 PM CDT Monday was 11.9 feet.
- Forecast...The river is expected to fall below flood stage
early Friday morning and continue falling to 10.5 feet
Saturday evening.
- Flood stage is 11.0 feet.
- Flood History...This crest compares to a previous crest of
11.8 feet on 03/27/2017.
- http://www.weather.gov/safety/flood', ' ', '2023-03-14 05:17:00+02', '2023-03-15 05:30:00+02', 'ARC027,LAC119', '2023-03-17 13:48:34.069057+02'),
	(1034, 'LA', 'Severe', 'East Baton Rouge, LA; Pointe Coupee, LA; West Feliciana, LA', 'Flood Warning issued March 11 at 6:25PM CST until March 23 at 4:00AM CDT by NWS New Orleans LA', '* WHAT...Minor flooding is occurring and minor flooding is forecast.

* WHERE...Mississippi River At Red River Landing.

* WHEN...Until Thursday, March 23.

* IMPACTS...At 51.0 feet, All river islands along the reach from Red
River Landing to Baton Rouge will be inundated. Recreational camps
and river bottom farm land will be under water.

* ADDITIONAL DETAILS...
- At 5:00 PM CST Saturday the stage was 48.3 feet.
- Forecast...The river is expected to rise to a crest of 50.0
feet Friday morning. It will then fall below flood stage
Wednesday, March 22.
- Flood stage is 48.0 feet.
- Flood History...This crest compares to a previous crest of
50.1 feet on 04/27/1938.
- http://www.weather.gov/safety/flood', ' ', '2023-03-12 02:25:00+02', '2023-03-12 20:30:00+02', 'LAC033,LAC077,LAC125', '2023-03-17 13:48:34.069057+02'),
	(1035, 'LA', 'Severe', 'East Baton Rouge, LA; Pointe Coupee, LA; West Feliciana, LA', 'Flood Warning issued March 10 at 6:28PM CST until March 25 at 7:00AM CDT by NWS New Orleans LA', '* WHAT...Minor flooding is forecast.

* WHERE...Mississippi River At Red River Landing.

* WHEN...From Saturday morning to Saturday, March 25.

* IMPACTS...At 51.0 feet, All river islands along the reach from Red
River Landing to Baton Rouge will be inundated. Recreational camps
and river bottom farm land will be under water.

* ADDITIONAL DETAILS...
- At 5:00 PM CST Friday the stage was 47.72 feet.
- Forecast...The river is expected to rise above flood stage
early Saturday to a crest of 50.0 feet Saturday, March 18. It
will then fall below flood stage Saturday, March 25.
- Flood stage is 48.0 feet.
- Flood History...This crest compares to a previous crest of
50.1 feet on 04/28/1938.
- http://www.weather.gov/safety/flood', ' ', '2023-03-11 02:28:00+02', '2023-03-11 20:30:00+02', 'LAC033,LAC077,LAC125', '2023-03-17 13:48:34.069057+02'),
	(1036, 'MA', 'Severe', 'Bristol, MA; Plymouth, MA', 'Flood Warning issued March 16 at 8:26PM EDT until March 18 at 5:00AM EDT by NWS Boston/Norton MA', '* WHAT...Minor flooding is occurring and minor flooding is forecast.

* WHERE...Taunton River Near Bridgewater.

* WHEN...Until early Saturday morning.

* IMPACTS...At 9.0 feet, Backwater flooding from the Taunton River
will cause flooding of lower Purchade Brook in Middleboro.  This
will cause Woloski Park to become impassable by most vehicles for
an extended period of time.  Beware of the dangers of crossing
flooded roadways. The water may be deeper than you think.
Floodwaters have the ability to damage roadways. Heed the advice
of local officials, and evacuate if asked to do so.

* ADDITIONAL DETAILS...
- At 7:45 PM EDT Thursday the stage was 8.7 feet.
- Recent Activity...The maximum river stage in the 24 hours
ending at 7:45 PM EDT Thursday was 8.7 feet.
- Forecast...The river is expected to fall below flood stage
late tomorrow evening and continue falling to 6.3 feet Sunday
evening.
- Flood stage is 8.0 feet.
- Flood History...This crest compares to a previous crest of
8.7 feet on 01/26/2019.
- http://www.weather.gov/safety/flood', ' ', '2023-03-17 02:26:00+02', '2023-03-17 14:30:00+02', 'MAC005,MAC023', '2023-03-17 13:48:34.069057+02'),
	(1037, 'MA', 'Severe', 'Essex, MA', 'Flood Warning issued March 16 at 8:26PM EDT until March 17 at 9:00AM EDT by NWS Boston/Norton MA', '* WHAT...Minor flooding is occurring and minor flooding is forecast.

* WHERE...Shawsheen River At Andover.

* WHEN...Until late tomorrow morning.

* IMPACTS...At 29.0 feet, Floodwaters encroach on very lowest lying
business parking lots off of Route 114 in Lawrence and North
Andover that are adjacent to the Shawsheen River.

* ADDITIONAL DETAILS...
- At 7:30 PM EDT Thursday the stage was 29.2 feet.
- Recent Activity...The maximum river stage in the 24 hours
ending at 7:30 PM EDT Thursday was 29.4 feet.
- Forecast...The river is expected to fall below flood stage
just after midnight tonight and continue falling to 25.8 feet
Sunday evening.
- Flood stage is 29.0 feet.
- Flood History...This crest compares to a previous crest of
29.2 feet on 09/04/2021.
- http://www.weather.gov/safety/flood', ' ', '2023-03-17 02:26:00+02', '2023-03-17 14:30:00+02', 'MAC009', '2023-03-17 13:48:34.069057+02'),
	(1038, 'MA', 'Severe', 'Bristol, MA; Plymouth, MA', 'Flood Warning issued March 14 at 10:52PM EDT until March 17 at 8:00AM EDT by NWS Boston/Norton MA', '* WHAT...Minor flooding is forecast.

* WHERE...Taunton River Near Bridgewater.

* WHEN...From Wednesday morning to Friday morning.

* IMPACTS...At 9.0 feet, Backwater flooding from the Taunton River
will cause flooding of lower Purchade Brook in Middleboro.  This
will cause Woloski Park to become impassable by most vehicles for
an extended period of time.  Beware of the dangers of crossing
flooded roadways. The water may be deeper than you think.
Floodwaters have the ability to damage roadways. Heed the advice
of local officials, and evacuate if asked to do so.

* ADDITIONAL DETAILS...
- At 9:45 PM EDT Tuesday the stage was 6.8 feet.
- Forecast...The river is expected to rise above flood stage
tomorrow morning to a crest of 8.7 feet early Thursday
morning. It will then fall below flood stage early Friday
morning.
- Flood stage is 8.0 feet.
- Flood History...This crest compares to a previous crest of
8.7 feet on 01/26/2019.
- http://www.weather.gov/safety/flood', ' ', '2023-03-15 04:52:00+02', '2023-03-15 17:00:00+02', 'MAC005,MAC023', '2023-03-17 13:48:34.069057+02'),
	(1039, 'MI', 'Severe', 'Keweenaw; Ontonagon; Houghton; Gogebic; Southern Houghton', 'Winter Storm Warning issued March 17 at 4:42AM EDT until March 18 at 8:00PM EDT by NWS Marquette MI', '* WHAT...Heavy snow. Additional snow accumulations of 8 to 17
inches...heaviest in the higher terrain areas and in the
northern snow belts. Winds gusting as high as 50 mph will be
possible near the Lake Superior shoreline.

* WHERE...Keweenaw, Ontonagon, Northern Houghton, Gogebic and
Southern Houghton Counties.

* WHEN...Until 8 PM EDT /7 PM CDT/ Saturday.

* IMPACTS...Travel could be very difficult. Patchy blowing snow
could significantly reduce visibility. The hazardous conditions
will impact multiple morning and evening commutes through
Saturday. Gusty winds could bring down tree branches.', 'If you must travel, keep an extra flashlight, food, and water in
your vehicle in case of an emergency.', '2023-03-17 10:42:00+02', '2023-03-17 18:45:00+02', 'MIZ001,MIZ002,MIZ003,MIZ009,MIZ084', '2023-03-17 13:48:34.069057+02'),
	(1040, 'MI', 'Severe', 'Baraga', 'Winter Storm Warning issued March 17 at 4:42AM EDT until March 18 at 8:00PM EDT by NWS Marquette MI', '* WHAT...Heavy snow. Additional snow accumulations of 9 to 19
inches...heaviest amounts in the Huron Mountains and the
northern snow belts. Winds gusting as high as 35 mph.

* WHERE...Baraga County.

* WHEN...Until 8 PM EDT Saturday.

* IMPACTS...Travel could be very difficult. Patchy blowing snow
could significantly reduce visibility. The hazardous conditions
could impact multiple morning and evening commutes through
Saturday.', 'If you must travel, keep an extra flashlight, food, and water in
your vehicle in case of an emergency.', '2023-03-17 10:42:00+02', '2023-03-17 18:45:00+02', 'MIZ004', '2023-03-17 13:48:34.069057+02'),
	(1041, 'MI', 'Severe', 'Baraga', 'The Winter Storm Watch has been replaced. Please see the latest information from NWS Marquette MI on this developing situation.', 'The Winter Storm Watch has been replaced. Please see the latest information from NWS Marquette MI on this developing situation.', 'If you must travel, keep an extra flashlight, food, and water in
your vehicle in case of an emergency.', '2023-03-16 21:39:00+02', '2023-03-16 21:54:39+02', 'MIZ004', '2023-03-17 13:48:34.069057+02'),
	(1042, 'MI', 'Severe', 'Iron', 'The Winter Storm Watch has been replaced. Please see the latest information from NWS Marquette MI on this developing situation.', 'The Winter Storm Watch has been replaced. Please see the latest information from NWS Marquette MI on this developing situation.', 'Slow down and use caution while traveling.', '2023-03-16 21:39:00+02', '2023-03-16 21:54:40+02', 'MIZ010', '2023-03-17 13:48:34.069057+02'),
	(1043, 'MI', 'Severe', 'Baraga; Marquette; Alger; Luce; Iron; Northern Schoolcraft', 'Winter Storm Watch issued March 16 at 4:58AM EDT until March 18 at 8:00PM EDT by NWS Marquette MI', '* WHAT...Heavy snow expected tonight through Friday morning,
followed by lake effect snow Friday afternoon through Saturday.
Snowfall amounts in excess of 6 inches can be expected
especially in the higher terrain areas and north to northeast
snow belts. Winds could gust as high as 45 mph near the Lake
Superior shoreline.

* WHERE...Portions of central Upper Michigan.

* WHEN...From this evening through Saturday evening.

* IMPACTS...Travel could be very difficult. Patchy blowing snow
could significantly reduce visibility. The hazardous conditions
could impact multiple morning and evening commutes from this
evening through Saturday. Gusty winds could bring down tree
branches.

* ADDITIONAL DETAILS...Snow will be preceded by a period of rain
today before a change over to wet snow tonight. This may lead to
slick road conditions tonight into early Friday.', 'Monitor the latest forecasts for updates on this situation.', '2023-03-16 10:58:00+02', '2023-03-16 19:00:00+02', 'MIZ004,MIZ005,MIZ006,MIZ007,MIZ010,MIZ085', '2023-03-17 13:48:34.069057+02'),
	(1044, 'MI', 'Severe', 'Keweenaw; Ontonagon; Houghton; Gogebic; Southern Houghton', 'Winter Storm Warning issued March 16 at 4:58AM EDT until March 18 at 8:00PM EDT by NWS Marquette MI', '* WHAT...Heavy snow expected tonight through Friday morning,
followed by lake effect snow Friday afternoon through Saturday.
Total snow accumulations 8 to 12 inches, with locally higher
amounts possible especially in the higher terrain areas and
north to northeast snow belts. Winds may gust as high as 45 mph
near the Lake Superior shoreline.

* WHERE...Keweenaw, Ontonagon, Houghton, and Gogebic Counties.

* WHEN...From 8 PM EDT /7 PM CDT/ this evening to 8 PM EDT /7 PM
CDT/ Saturday.

* IMPACTS...Travel could be very difficult. Patchy blowing snow
could significantly reduce visibility. The hazardous conditions
could impact multiple morning and evening commutes from this
evening through Saturday. Gusty winds could bring down tree
branches.

* ADDITIONAL DETAILS...Snow will be preceded by a period of rain
today before changing over to wet snow tonight. This may lead to
slick road conditions tonight into early Friday.

PRECAUTIONARY/PREPAREDNESS
ACTIONS...

If you must travel, keep an extra flashlight, food, and water in
your vehicle in case of an emergency.', ' ', '2023-03-16 10:58:00+02', '2023-03-16 19:00:00+02', 'MIZ001,MIZ002,MIZ003,MIZ009,MIZ084', '2023-03-17 13:48:34.069057+02'),
	(1045, 'MI', 'Severe', 'Western Chippewa; Central Chippewa; Southeast Chippewa; Western Mackinac; Eastern Mackinac', 'Winter Storm Watch issued March 15 at 3:51AM EDT until March 18 at 8:00AM EDT by NWS Gaylord MI', '* WHAT...Heavy snow possible. Total snow accumulations of 6 to
13 inches possible. Winds could gust as high as 40 mph.

* WHERE...Western Chippewa, Central Chippewa, Southeast
Chippewa, Western Mackinac and Eastern Mackinac Counties.

* WHEN...From Thursday evening through Saturday morning.

* IMPACTS...Travel could be very difficult to impossible. The
hazardous conditions could impact the Friday morning and
evening commutes.

* ADDITIONAL DETAILS...Snow is expected to start out wet and
dense in nature, but blowing and drifting remain a possibility,
especially going into later Friday and Friday night.', 'Monitor the latest forecasts for updates on this situation.', '2023-03-15 09:51:00+02', '2023-03-15 18:00:00+02', 'MIZ086,MIZ087,MIZ088,MIZ095,MIZ096', '2023-03-17 13:48:34.069057+02'),
	(1046, 'MI', 'Severe', 'Keweenaw; Ontonagon; Houghton; Baraga; Marquette; Alger; Luce; Gogebic; Iron; Dickinson; Menominee; Delta; Southern Schoolcraft; Southern Houghton; Northern Schoolcraft', 'Winter Storm Watch issued March 15 at 3:50AM EDT until March 18 at 8:00PM EDT by NWS Marquette MI', '* WHAT...Heavy snow expected Friday, followed by lake effect snow
Saturday. Winds could gust as high as 40 mph.

* WHERE...Portions of central Upper and western Upper Michigan.

* WHEN...From Thursday evening through Saturday evening.

* IMPACTS...Travel could be very difficult. Patchy blowing snow
could significantly reduce visibility. The hazardous conditions
could impact the morning or evening commute.

* ADDITIONAL DETAILS...Snow will be preceded by a period of rain
Thursday before a change over to snow Thursday night. This may
lead to slick road conditions Thursday night into early Friday.', 'Monitor the latest forecasts for updates on this situation.', '2023-03-15 09:50:00+02', '2023-03-15 18:00:00+02', 'MIZ001,MIZ002,MIZ003,MIZ004,MIZ005,MIZ006,MIZ007,MIZ009,MIZ010,MIZ011,MIZ012,MIZ013,MIZ014,MIZ084,MIZ085', '2023-03-17 13:48:34.069057+02'),
	(1047, 'MN', 'Severe', 'Lyon; Osceola; Dickinson; Sioux; O''Brien; Clay; Plymouth; Cherokee; Buena Vista; Woodbury; Ida; Lincoln; Lyon; Murray; Cottonwood; Nobles; Jackson; Pipestone; Rock; Dixon; Dakota; Brookings; Gregory; Miner; Lake; Moody; Davison; Hanson; McCook; Minnehaha; Charles Mix; Douglas; Hutchinson; Turner; Lincoln; Bon Homme; Yankton; Clay; Union', 'Winter Storm Watch issued March 15 at 3:29AM CDT until March 17 at 7:00AM CDT by NWS Sioux Falls SD', '* WHAT...Blizzard conditions possible. Total snow accumulations of
3 to 7 inches and ice accumulations of a light glaze possible.
Winds could gust as high as 50 mph.

* WHERE...Portions of northwest and west central Iowa, southwest
Minnesota, northeast Nebraska and east central, south central
and southeast South Dakota.

* WHEN...From late tonight through Friday morning.

* IMPACTS...Travel could be very difficult. Patchy blowing snow
could significantly reduce visibility. The hazardous conditions
could impact the morning or evening commute. Gusty winds could
bring down tree branches.', 'Prepare for possible blizzard conditions. Continue to monitor the
latest forecasts for updates on this situation.', '2023-03-15 10:29:00+02', '2023-03-15 18:30:00+02', 'IAZ001,IAZ002,IAZ003,IAZ012,IAZ013,IAZ014,IAZ020,IAZ021,IAZ022,IAZ031,IAZ032,MNZ071,MNZ072,MNZ080,MNZ081,MNZ089,MNZ090,MNZ097,MNZ098,NEZ013,NEZ014,SDZ040,SDZ050,SDZ054,SDZ055,SDZ056,SDZ059,SDZ060,SDZ061,SDZ062,SDZ063,SDZ064,SDZ065,SDZ066,SDZ067,SDZ068,SDZ069,SDZ070,SDZ071', '2023-03-17 13:48:34.069057+02'),
	(1048, 'MS', 'Severe', 'Ashley; Chicot; Morehouse; West Carroll; East Carroll; Bolivar; Sunflower; Leflore; Grenada; Carroll; Montgomery; Webster; Clay; Lowndes; Choctaw; Oktibbeha; Washington; Humphreys; Holmes; Attala; Winston; Noxubee; Issaquena; Sharkey; Yazoo; Madison; Leake; Neshoba; Kemper; Warren; Hinds; Rankin; Scott; Newton; Lauderdale', 'Freeze Watch issued March 17 at 3:31AM CDT until March 19 at 10:00AM CDT by NWS Jackson MS', '* WHAT...Sub-freezing temperatures as low as 28 possible.

* WHERE...Portions of southeast Arkansas, northeast Louisiana and
central Mississippi.

* WHEN...From late Saturday night through Sunday morning.

* IMPACTS...Frost and freeze conditions could kill crops, other
sensitive vegetation and possibly damage unprotected outdoor
plumbing.', 'Take steps now to protect tender plants from the cold. To prevent
freezing and possible bursting of outdoor water pipes they should
be wrapped, drained, or allowed to drip slowly. Those that have
in-ground sprinkler systems should drain them and cover above-
ground pipes to protect them from freezing.', '2023-03-17 10:31:00+02', '2023-03-17 18:45:00+02', 'ARZ074,ARZ075,LAZ007,LAZ008,LAZ009,MSZ018,MSZ019,MSZ025,MSZ026,MSZ027,MSZ028,MSZ029,MSZ030,MSZ031,MSZ032,MSZ033,MSZ034,MSZ035,MSZ036,MSZ037,MSZ038,MSZ039,MSZ040,MSZ041,MSZ042,MSZ043,MSZ044,MSZ045,MSZ046,MSZ047,MSZ048,MSZ049,MSZ050,MSZ051,MSZ052', '2023-03-17 13:48:34.069057+02'),
	(1049, 'MS', 'Severe', 'Tishomingo; Prentiss; Lafayette; Union; Pontotoc; Lee; Itawamba', 'Freeze Watch issued March 17 at 3:31AM CDT until March 18 at 9:00AM CDT by NWS Memphis TN', '* WHAT...For the Freeze Warning, sub-freezing temperatures as low
as 25 expected. For the Freeze Watch, sub-freezing temperatures
as low as 32 possible.

* WHERE...Tishomingo, Prentiss, Lafayette, Union, Pontotoc, Lee
MS and Itawamba Counties.

* WHEN...For the Freeze Warning, from 10 PM Saturday to 11 AM
CDT Sunday. For the Freeze Watch, from late tonight through
Saturday morning.

* IMPACTS...Frost and freeze conditions will kill crops, other
sensitive vegetation and possibly damage unprotected outdoor
plumbing.', 'Take steps now to protect tender plants from the cold. To prevent
freezing and possible bursting of outdoor water pipes they should
be wrapped, drained, or allowed to drip slowly. Those that have
in-ground sprinkler systems should drain them and cover above-
ground pipes to protect them from freezing.', '2023-03-17 10:31:00+02', '2023-03-17 23:15:00+02', 'MSZ006,MSZ009,MSZ013,MSZ014,MSZ015,MSZ016,MSZ017', '2023-03-17 13:48:34.069057+02'),
	(1050, 'MS', 'Severe', 'Lee; Phillips; DeSoto; Marshall; Benton; Tippah; Alcorn; Tunica; Tate; Coahoma; Quitman; Panola', 'Freeze Watch issued March 17 at 3:31AM CDT until March 18 at 9:00AM CDT by NWS Memphis TN', '* WHAT...For the Freeze Warning, sub-freezing temperatures as low
as 25 expected. For the Freeze Watch, sub-freezing temperatures
as low as 32 possible.

* WHERE...Portions of East Arkansas and North Mississippi.

* WHEN...For the Freeze Warning, from 10 PM Saturday to 11 AM
CDT Sunday. For the Freeze Watch, from late tonight through
Saturday morning.

* IMPACTS...Frost and freeze conditions will kill crops, other
sensitive vegetation and possibly damage unprotected outdoor
plumbing.', 'Take steps now to protect tender plants from the cold. To prevent
freezing and possible bursting of outdoor water pipes they should
be wrapped, drained, or allowed to drip slowly. Those that have
in-ground sprinkler systems should drain them and cover above-
ground pipes to protect them from freezing.', '2023-03-17 10:31:00+02', '2023-03-17 23:15:00+02', 'ARZ049,ARZ058,MSZ001,MSZ002,MSZ003,MSZ004,MSZ005,MSZ007,MSZ008,MSZ010,MSZ011,MSZ012', '2023-03-17 13:48:34.069057+02'),
	(1051, 'MS', 'Severe', 'Neshoba, MS', 'Flood Warning issued March 16 at 8:57PM CDT until March 21 at 7:00PM CDT by NWS Jackson MS', '* WHAT...Minor flooding is forecast.

* WHERE...Pearl River Above Philadelphia.

* WHEN...From Sunday evening to Tuesday evening.

* IMPACTS...At 13.0 feet, Water begins to affect Burnside Lake Water
Park.

* ADDITIONAL DETAILS...
- At 7:45 PM CDT Thursday the stage was 11.9 feet.
- Forecast...The river is expected to fall then rise to a crest
of 13.0 feet Sunday evening.
- Flood stage is 13.0 feet.', ' ', '2023-03-17 03:57:00+02', '2023-03-17 16:00:00+02', 'MSC099', '2023-03-17 13:48:34.069057+02'),
	(1052, 'MS', 'Severe', 'Concordia, LA; Adams, MS; Wilkinson, MS', 'Flood Warning issued March 16 at 8:56PM CDT until March 20 at 7:00AM CDT by NWS Jackson MS', '* WHAT...Minor flooding is occurring and minor flooding is forecast.

* WHERE...Mississippi River At Natchez.

* WHEN...Until Monday morning.

* IMPACTS...At 48.0 feet, Carthage Point Road becomes impassable.

* ADDITIONAL DETAILS...
- At 8:00 PM CDT Thursday the stage was 48.4 feet.
- Forecast...The river is expected to rise to a crest of 48.5
feet just after midnight tonight.
- Flood stage is 48.0 feet.', ' ', '2023-03-17 03:56:00+02', '2023-03-17 16:00:00+02', 'LAC029,MSC001,MSC157', '2023-03-17 13:48:34.069057+02'),
	(1053, 'MS', 'Severe', 'Attala, MS; Holmes, MS', 'Flood Warning issued March 16 at 8:55PM CDT by NWS Jackson MS', '* WHAT...Minor flooding is occurring and minor flooding is forecast.

* WHERE...Big Black River At West.

* WHEN...Until further notice.

* ADDITIONAL DETAILS...
- At 7:45 PM CDT Thursday the stage was 15.9 feet.
- Forecast...The river is expected to rise to a crest of 17.5
feet Sunday morning.
- Flood stage is 15.0 feet.', ' ', '2023-03-17 03:55:00+02', '2023-03-17 16:00:00+02', 'MSC007,MSC051', '2023-03-17 13:48:34.069057+02'),
	(1054, 'MS', 'Severe', 'Attala, MS; Holmes, MS', 'Flood Warning issued March 15 at 7:37PM CDT until March 17 at 5:00PM CDT by NWS Jackson MS', '* WHAT...Minor flooding is occurring and minor flooding is forecast.

* WHERE...Big Black River At West.

* WHEN...Until Friday afternoon.

* IMPACTS...At 15.0 feet, Lowlands and agricultural land near the
river begin to flood.

* ADDITIONAL DETAILS...
- At 6:45 PM CDT Wednesday the stage was 15.0 feet.
- Recent Activity...The maximum river stage in the 24 hours
ending at 6:45 PM CDT Wednesday was 15.0 feet.
- Forecast...The river is expected to rise to a crest of 15.5
feet tomorrow morning.
- Flood stage is 15.0 feet.', ' ', '2023-03-16 02:37:00+02', '2023-03-16 14:45:00+02', 'MSC007,MSC051', '2023-03-17 13:48:34.069057+02'),
	(1055, 'MS', 'Severe', 'Concordia, LA; Adams, MS; Wilkinson, MS', 'Flood Warning issued March 14 at 8:24PM CDT until March 20 at 10:00AM CDT by NWS Jackson MS', '* WHAT...Minor flooding is forecast.

* WHERE...Mississippi River At Natchez.

* WHEN...From Wednesday afternoon to late Monday morning.

* IMPACTS...At 48.0 feet, Carthage Point Road becomes impassable.

* ADDITIONAL DETAILS...
- At 8:00 PM CDT Tuesday the stage was 47.7 feet.
- Forecast...The river is expected to rise above flood stage
early tomorrow afternoon to a crest of 48.5 feet early Friday
morning.
- Flood stage is 48.0 feet.', ' ', '2023-03-15 03:24:00+02', '2023-03-15 15:30:00+02', 'LAC029,MSC001,MSC157', '2023-03-17 13:48:34.069057+02'),
	(1056, 'MS', 'Severe', 'Attala, MS; Holmes, MS', 'Flood Warning issued March 14 at 8:23PM CDT until March 17 at 5:00PM CDT by NWS Jackson MS', '* WHAT...Minor flooding is forecast.

* WHERE...Big Black River At West.

* WHEN...Until Friday afternoon.

* ADDITIONAL DETAILS...
- At 7:45 PM CDT Tuesday the stage was 13.1 feet.
- Forecast...The river is expected to rise above flood stage
late tomorrow evening to a crest of 15.5 feet Thursday
morning.
- Flood stage is 15.0 feet.', ' ', '2023-03-15 03:23:00+02', '2023-03-15 15:30:00+02', 'MSC007,MSC051', '2023-03-17 13:48:34.069057+02'),
	(1057, 'NE', 'Severe', 'Lyon; Osceola; Dickinson; Sioux; O''Brien; Clay; Plymouth; Cherokee; Buena Vista; Woodbury; Ida; Lincoln; Lyon; Murray; Cottonwood; Nobles; Jackson; Pipestone; Rock; Dixon; Dakota; Brookings; Gregory; Miner; Lake; Moody; Davison; Hanson; McCook; Minnehaha; Charles Mix; Douglas; Hutchinson; Turner; Lincoln; Bon Homme; Yankton; Clay; Union', 'Winter Storm Watch issued March 15 at 3:29AM CDT until March 17 at 7:00AM CDT by NWS Sioux Falls SD', '* WHAT...Blizzard conditions possible. Total snow accumulations of
3 to 7 inches and ice accumulations of a light glaze possible.
Winds could gust as high as 50 mph.

* WHERE...Portions of northwest and west central Iowa, southwest
Minnesota, northeast Nebraska and east central, south central
and southeast South Dakota.

* WHEN...From late tonight through Friday morning.

* IMPACTS...Travel could be very difficult. Patchy blowing snow
could significantly reduce visibility. The hazardous conditions
could impact the morning or evening commute. Gusty winds could
bring down tree branches.', 'Prepare for possible blizzard conditions. Continue to monitor the
latest forecasts for updates on this situation.', '2023-03-15 10:29:00+02', '2023-03-15 18:30:00+02', 'IAZ001,IAZ002,IAZ003,IAZ012,IAZ013,IAZ014,IAZ020,IAZ021,IAZ022,IAZ031,IAZ032,MNZ071,MNZ072,MNZ080,MNZ081,MNZ089,MNZ090,MNZ097,MNZ098,NEZ013,NEZ014,SDZ040,SDZ050,SDZ054,SDZ055,SDZ056,SDZ059,SDZ060,SDZ061,SDZ062,SDZ063,SDZ064,SDZ065,SDZ066,SDZ067,SDZ068,SDZ069,SDZ070,SDZ071', '2023-03-17 13:48:34.069057+02'),
	(1058, 'NV', 'Severe', 'Lincoln, NV', 'Flood Warning issued March 16 at 4:45PM PDT until March 17 at 5:00PM PDT by NWS Las Vegas NV', '* WHAT...Flooding caused by rain and snowmelt continues.

* WHERE...A portion of south central Nevada, including the following
county, Lincoln.

* WHEN...Until 500 PM PDT Friday.

* IMPACTS...Flooding of Meadow Valley Wash, and other low-lying and
flood-prone locations is imminent or occurring. Meadow Valley Wash
continues to rise due to excess runoff from earlier rainfall and
snowmelt. Low-water crossings are inundated with water and may not
be passable.

* ADDITIONAL DETAILS...
- At 443 PM PDT, gauge reports indicated the Meadow Valley Wash
remains above flood stage due to recent rains and snowmelt.
Flooding is ongoing or expected to begin shortly in Rainbow
Canyon, which will impact State Route 317 between Caliente
and Elgin.
- Some locations that will experience flooding include...
State Route 317 between Caliente and Elgin.
- http://www.weather.gov/safety/flood', 'Turn around, don''t drown when encountering flooded roads. Most flood
deaths occur in vehicles.', '2023-03-17 01:45:00+02', '2023-03-18 02:00:00+02', 'NVC017', '2023-03-17 13:48:34.069057+02'),
	(1059, 'NV', 'Severe', 'Lincoln, NV', 'Flood Warning issued March 16 at 4:43PM PDT until March 17 at 5:00PM PDT by NWS Las Vegas NV', '* WHAT...Flooding caused by excessive runoff below Echo Canyon Dam.

* WHERE...A portion of south central Nevada, including the following
county, Lincoln.

* WHEN...Until 500 PM PDT Friday.

* IMPACTS...Flooding of rivers, creeks, streams, and other low-lying
and flood-prone locations is imminent or occurring. Low-water
crossings are inundated with water and may not be passable.

* ADDITIONAL DETAILS...
- At 441 PM PDT, emergency management reported higher than
normal flows in Meadow Valley Wash due to water spilling over
Echo Dam emergency spillway. Flooding is ongoing.
- Some locations that will experience flooding include...
Panaca, State Route 319, low lying areas adjacent to the
Meadow Valley Wash between Echo Canyon State Park and
Caliente.
- http://www.weather.gov/safety/flood', 'Turn around, don''t drown when encountering flooded roads. Most flood
deaths occur in vehicles.

Stay away or be swept away. River banks and culverts can become
unstable and unsafe.', '2023-03-17 01:43:00+02', '2023-03-18 02:00:00+02', 'NVC017', '2023-03-17 13:48:34.069057+02'),
	(1060, 'NV', 'Severe', 'Lincoln, NV', 'Flood Warning issued March 16 at 4:41PM PDT until March 17 at 5:00PM PDT by NWS Las Vegas NV', '* WHAT...Small stream flooding caused by rain and snowmelt continues.

* WHERE...A portion of south central Nevada, including the following
county, Lincoln.

* WHEN...Until 500 PM PDT Friday.

* IMPACTS...Flooding of rivers, creeks, streams, and other low-lying
and flood-prone locations is imminent or occurring. Streams
continue to rise due to excess runoff from earlier rainfall.
Low-water crossings are inundated with water and may not be
passable.

* ADDITIONAL DETAILS...
- At 435 PM PDT, gauge reports indicate the Meadow Valley Wash
north of Ursine is flowing higher than normal due to snowmelt
and rain. Flooding is expected in the warned area.
- This includes the following streams and drainages...
Immigration Wash and Meadow Valley Wash.
- Some locations that will experience flooding include...
Ursine, Meadow Valley Campground, Echo Canyon State Park,
Horsethief Gulch Campground and Eagle Valley.
- http://www.weather.gov/safety/flood', 'Turn around, don''t drown when encountering flooded roads. Most flood
deaths occur in vehicles.', '2023-03-17 01:41:00+02', '2023-03-18 02:00:00+02', 'NVC017', '2023-03-17 13:48:34.069057+02'),
	(1061, 'NV', 'Severe', 'Eureka, NV', 'Flood Warning issued March 16 at 1:16PM PDT until March 17 at 11:00AM PDT by NWS Elko NV', '* WHAT...Urban area and small stream flooding caused by snowmelt
continues.

* WHERE...A portion of north central Nevada, including the following
county, Eureka.

* WHEN...Until 1100 AM PDT Friday.

* IMPACTS...Flooding of rivers, creeks, streams, and other low-lying
and flood-prone locations is imminent or occurring. Numerous roads
remain closed due to flooding. Low-water crossings are inundated
with water and may not be passable.

* ADDITIONAL DETAILS...
- At 112 PM PDT, Ongoing flooding continues across the warned
area. Rapid snowmelt is occurring and will continue to cause
flooding.
- Some locations that will experience flooding include...
Eureka and Diamond Valley.
- http://www.weather.gov/safety/flood', 'Be especially cautious at night when it is harder to recognize the
dangers of flooding.

Stay away or be swept away. River banks and culverts can become
unstable and unsafe.', '2023-03-16 22:16:00+02', '2023-03-17 20:00:00+02', 'NVC011', '2023-03-17 13:48:34.069057+02'),
	(1062, 'NM', 'Severe', 'Tusas Mountains Including Chama; Jemez Mountains; Northern Sangre de Cristo Mountains; Southern Sangre de Cristo Mountains; East Slopes Sangre de Cristo Mountains', 'Winter Storm Warning issued March 17 at 2:51AM MDT until March 17 at 12:00PM MDT by NWS Albuquerque NM', '* WHAT...Heavy snow. Additional snow accumulations 1 to 4 inches.

* WHERE...Northern Mountains.

* WHEN...Until Noon MDT today.

* IMPACTS...Plan on snow packed or icy road conditions. The
hazardous conditions could impact the Friday morning commute.', 'If you must travel, keep an extra flashlight, food, and water in
your vehicle in case of an emergency. For the latest road
conditions, dial 511 or 1.800.432.4269, or visit http://nmroads.com.', '2023-03-17 10:51:00+02', '2023-03-17 20:00:00+02', 'NMZ210,NMZ211,NMZ213,NMZ214,NMZ215', '2023-03-17 13:48:34.069057+02'),
	(1063, 'NY', 'Severe', 'Jefferson; Lewis', 'Winter Storm Watch issued March 17 at 4:37AM EDT until March 19 at 2:00PM EDT by NWS Buffalo NY', '* WHAT...Heavy lake effect snow possible. Total snow
accumulations in excess of seven inches possible in the most
persistent lake snows. Winds could gust as high as 40 mph.

* WHERE...Jefferson and Lewis counties.

* WHEN...From Saturday afternoon through Sunday afternoon.

* IMPACTS...Travel could be difficult...particularly Saturday
night. Areas of blowing snow could significantly reduce
visibility.', 'Narrow bands of heavy snow could impact portions of the region.
Localized travel problems will be possible.', '2023-03-17 10:37:00+02', '2023-03-17 18:45:00+02', 'NYZ007,NYZ008', '2023-03-17 13:48:34.069057+02'),
	(1064, 'NY', 'Severe', 'Wyoming; Chautauqua; Cattaraugus; Southern Erie', 'Winter Storm Watch issued March 17 at 4:37AM EDT until March 19 at 2:00PM EDT by NWS Buffalo NY', '* WHAT...Heavy lake effect snow possible. Total snow
accumulations in excess of seven inches possible in the most
persistent lake snows. Winds could gust as high as 40 mph.

* WHERE...Wyoming, Chautauqua, Cattaraugus, and Southern Erie
counties.

* WHEN...From Saturday afternoon through Sunday afternoon.

* IMPACTS...Travel could be difficult...particularly Saturday
night. Areas of blowing snow could significantly reduce
visibility.', 'Narrow bands of heavy snow could impact portions of the region.
Localized travel problems will be possible.', '2023-03-17 10:37:00+02', '2023-03-17 18:45:00+02', 'NYZ012,NYZ019,NYZ020,NYZ085', '2023-03-17 13:48:34.069057+02'),
	(1065, 'NC', 'Severe', 'Cherokee; Clay; Scott; Campbell; Claiborne; Hancock; Hawkins; Sullivan; Morgan; Anderson; Union; Grainger; Hamblen; Northwest Cocke; Northwest Greene; Washington; Northwest Carter; Roane; Loudon; Knox; Jefferson; NW Blount; North Sevier; Sequatchie; Bledsoe; Rhea; Meigs; McMinn; Northwest Monroe; Marion; Hamilton; Bradley; West Polk; East Polk; Lee; Wise; Scott; Russell; Washington', 'Freeze Watch issued March 17 at 3:26AM EDT until March 18 at 9:00AM EDT by NWS Morristown TN', '* WHAT...Sub-freezing temperatures as low as 27 possible.

* WHERE...Much of southwest North Carolina, east Tennessee and
southwest Virginia.

* WHEN...From late tonight through Saturday morning.

* IMPACTS...Frost and freeze conditions could kill crops and
other sensitive vegetation.', 'Take steps now to protect tender plants from the cold. Those that
have in-ground sprinkler systems should drain them and cover
above-ground pipes to protect them from freezing.', '2023-03-17 09:26:00+02', '2023-03-17 23:00:00+02', 'NCZ060,NCZ061,TNZ012,TNZ013,TNZ014,TNZ015,TNZ016,TNZ017,TNZ035,TNZ036,TNZ037,TNZ038,TNZ039,TNZ040,TNZ042,TNZ044,TNZ046,TNZ067,TNZ068,TNZ069,TNZ070,TNZ071,TNZ073,TNZ081,TNZ082,TNZ083,TNZ084,TNZ085,TNZ086,TNZ098,TNZ099,TNZ100,TNZ101,TNZ102,VAZ001,VAZ002,VAZ005,VAZ006,VAZ008', '2023-03-17 13:48:34.069057+02'),
	(1066, 'OK', 'Severe', 'Sevier; Howard; Little River; Hempstead; Nevada; McCurtain', 'Freeze Watch issued March 17 at 2:55AM CDT until March 18 at 9:00AM CDT by NWS Shreveport LA', '* WHAT...Sub-freezing temperatures as low as 31 possible.

* WHERE...In Arkansas, Sevier County, Howard County, Little
River County, Hempstead County and Nevada County. In Oklahoma,
McCurtain County.

* WHEN...From late Friday night through Saturday morning.

* IMPACTS...Frost and freeze conditions could kill crops, other
sensitive vegetation and possibly damage unprotected outdoor
plumbing.', 'Take steps now to protect tender plants from the cold. To prevent
freezing and possible bursting of outdoor water pipes they should
be wrapped, drained, or allowed to drip slowly. Those that have
in-ground sprinkler systems should drain them and cover above-
ground pipes to protect them from freezing.', '2023-03-17 09:55:00+02', '2023-03-18 01:00:00+02', 'ARZ050,ARZ051,ARZ059,ARZ060,ARZ061,OKZ077', '2023-03-17 13:48:34.069057+02'),
	(1067, 'SD', 'Severe', 'Lyon; Osceola; Dickinson; Sioux; O''Brien; Clay; Plymouth; Cherokee; Buena Vista; Woodbury; Ida; Lincoln; Lyon; Murray; Cottonwood; Nobles; Jackson; Pipestone; Rock; Dixon; Dakota; Brookings; Gregory; Miner; Lake; Moody; Davison; Hanson; McCook; Minnehaha; Charles Mix; Douglas; Hutchinson; Turner; Lincoln; Bon Homme; Yankton; Clay; Union', 'Winter Storm Watch issued March 15 at 3:29AM CDT until March 17 at 7:00AM CDT by NWS Sioux Falls SD', '* WHAT...Blizzard conditions possible. Total snow accumulations of
3 to 7 inches and ice accumulations of a light glaze possible.
Winds could gust as high as 50 mph.

* WHERE...Portions of northwest and west central Iowa, southwest
Minnesota, northeast Nebraska and east central, south central
and southeast South Dakota.

* WHEN...From late tonight through Friday morning.

* IMPACTS...Travel could be very difficult. Patchy blowing snow
could significantly reduce visibility. The hazardous conditions
could impact the morning or evening commute. Gusty winds could
bring down tree branches.', 'Prepare for possible blizzard conditions. Continue to monitor the
latest forecasts for updates on this situation.', '2023-03-15 10:29:00+02', '2023-03-15 18:30:00+02', 'IAZ001,IAZ002,IAZ003,IAZ012,IAZ013,IAZ014,IAZ020,IAZ021,IAZ022,IAZ031,IAZ032,MNZ071,MNZ072,MNZ080,MNZ081,MNZ089,MNZ090,MNZ097,MNZ098,NEZ013,NEZ014,SDZ040,SDZ050,SDZ054,SDZ055,SDZ056,SDZ059,SDZ060,SDZ061,SDZ062,SDZ063,SDZ064,SDZ065,SDZ066,SDZ067,SDZ068,SDZ069,SDZ070,SDZ071', '2023-03-17 13:48:34.069057+02'),
	(1068, 'TN', 'Severe', 'Lauderdale; Colbert; Franklin; Lawrence; Limestone; Madison; Morgan; Marshall; Jackson; DeKalb; Cullman; Moore; Lincoln; Franklin', 'Freeze Watch issued March 17 at 3:27AM CDT until March 19 at 11:00AM CDT by NWS Huntsville AL', '* WHAT...For the first Freeze Watch, sub-freezing temperatures
as low as 30 possible. For the second Freeze Watch, sub-
freezing temperatures as low as 23 possible.

* WHERE...Portions of north central, northeast and northwest
Alabama and southern middle Tennessee.

* WHEN...For the first Freeze Watch, from late tonight through
Saturday morning. For the second Freeze Watch, from late
Saturday night through Sunday morning.

* IMPACTS...Frost and freeze conditions could kill crops, other
sensitive vegetation and possibly damage unprotected outdoor
plumbing.', 'Take steps now to protect tender plants from the cold. To prevent
freezing and possible bursting of outdoor water pipes they should
be wrapped, drained, or allowed to drip slowly. Those that have
in-ground sprinkler systems should drain them and cover above-
ground pipes to protect them from freezing.', '2023-03-17 10:27:00+02', '2023-03-17 22:00:00+02', 'ALZ001,ALZ002,ALZ003,ALZ004,ALZ005,ALZ006,ALZ007,ALZ008,ALZ009,ALZ010,ALZ016,TNZ076,TNZ096,TNZ097', '2023-03-17 13:48:34.069057+02'),
	(1069, 'TN', 'Severe', 'Lauderdale; Colbert; Franklin; Lawrence; Limestone; Madison; Morgan; Marshall; Jackson; DeKalb; Cullman; Moore; Lincoln; Franklin', 'Freeze Watch issued March 17 at 3:27AM CDT until March 18 at 9:00AM CDT by NWS Huntsville AL', '* WHAT...For the first Freeze Watch, sub-freezing temperatures
as low as 30 possible. For the second Freeze Watch, sub-
freezing temperatures as low as 23 possible.

* WHERE...Portions of north central, northeast and northwest
Alabama and southern middle Tennessee.

* WHEN...For the first Freeze Watch, from late tonight through
Saturday morning. For the second Freeze Watch, from late
Saturday night through Sunday morning.

* IMPACTS...Frost and freeze conditions could kill crops, other
sensitive vegetation and possibly damage unprotected outdoor
plumbing.', 'Take steps now to protect tender plants from the cold. To prevent
freezing and possible bursting of outdoor water pipes they should
be wrapped, drained, or allowed to drip slowly. Those that have
in-ground sprinkler systems should drain them and cover above-
ground pipes to protect them from freezing.', '2023-03-17 10:27:00+02', '2023-03-17 22:00:00+02', 'ALZ001,ALZ002,ALZ003,ALZ004,ALZ005,ALZ006,ALZ007,ALZ008,ALZ009,ALZ010,ALZ016,TNZ076,TNZ096,TNZ097', '2023-03-17 13:48:34.069057+02'),
	(1070, 'TN', 'Severe', 'Cherokee; Clay; Scott; Campbell; Claiborne; Hancock; Hawkins; Sullivan; Morgan; Anderson; Union; Grainger; Hamblen; Northwest Cocke; Northwest Greene; Washington; Northwest Carter; Roane; Loudon; Knox; Jefferson; NW Blount; North Sevier; Sequatchie; Bledsoe; Rhea; Meigs; McMinn; Northwest Monroe; Marion; Hamilton; Bradley; West Polk; East Polk; Lee; Wise; Scott; Russell; Washington', 'Freeze Watch issued March 17 at 3:26AM EDT until March 18 at 9:00AM EDT by NWS Morristown TN', '* WHAT...Sub-freezing temperatures as low as 27 possible.

* WHERE...Much of southwest North Carolina, east Tennessee and
southwest Virginia.

* WHEN...From late tonight through Saturday morning.

* IMPACTS...Frost and freeze conditions could kill crops and
other sensitive vegetation.', 'Take steps now to protect tender plants from the cold. Those that
have in-ground sprinkler systems should drain them and cover
above-ground pipes to protect them from freezing.', '2023-03-17 09:26:00+02', '2023-03-17 23:00:00+02', 'NCZ060,NCZ061,TNZ012,TNZ013,TNZ014,TNZ015,TNZ016,TNZ017,TNZ035,TNZ036,TNZ037,TNZ038,TNZ039,TNZ040,TNZ042,TNZ044,TNZ046,TNZ067,TNZ068,TNZ069,TNZ070,TNZ071,TNZ073,TNZ081,TNZ082,TNZ083,TNZ084,TNZ085,TNZ086,TNZ098,TNZ099,TNZ100,TNZ101,TNZ102,VAZ001,VAZ002,VAZ005,VAZ006,VAZ008', '2023-03-17 13:48:34.069057+02'),
	(1071, 'TX', 'Severe', 'Angelina, TX; Houston, TX; Polk, TX; Trinity, TX; Tyler, TX', 'Flood Warning issued March 17 at 1:06AM CDT until March 22 at 7:00AM CDT by NWS Shreveport LA', '* WHAT...Minor flooding is forecast.

* WHERE...Neches River Near Diboll.

* WHEN...From this evening to Wednesday morning.

* IMPACTS...At 12.0 feet, Minor lowland flooding occurs.  Expect
flooded boat ramps and trails.

* ADDITIONAL DETAILS...
- At 12:15 AM CDT Friday the stage was 9.2 feet.
- Forecast...The river is expected to rise above flood stage
this evening to a crest of 13.0 feet early Sunday morning. It
will then fall below flood stage early Tuesday afternoon.
- Flood stage is 12.0 feet.
- http://www.weather.gov/safety/flood', ' ', '2023-03-17 08:06:00+02', '2023-03-18 08:15:00+02', 'TXC005,TXC225,TXC373,TXC455,TXC457', '2023-03-17 13:48:34.069057+02'),
	(1072, 'TX', 'Severe', 'Dallas, TX', 'Flood Warning issued March 16 at 9:33PM CDT until March 18 at 1:00AM CDT by NWS Fort Worth TX', '* WHAT...Minor flooding is forecast.

* WHERE...Trinity River At Dallas.

* WHEN...From late tonight to early Saturday morning.

* IMPACTS...At 32.0 feet, Minor flooding of agricultural lands used
for cattle grazing will occur. Low water crossings near the river
will begin to flood.

* ADDITIONAL DETAILS...
- At 9:00 PM CDT Thursday the stage was 26.6 feet.
- Flood stage is 30.0 feet.
- Forecast...The river will rise above flood stage just after
midnight tonight and crest at 31.7 feet tomorrow morning. It
will then fall below flood stage early tomorrow afternoon.', ' ', '2023-03-17 04:33:00+02', '2023-03-17 22:45:00+02', 'TXC113', '2023-03-17 13:48:34.069057+02'),
	(1073, 'TX', 'Severe', 'Angelina, TX; Cherokee, TX; Nacogdoches, TX', 'Flood Warning issued March 16 at 8:37PM CDT by NWS Shreveport LA', 'RRA

* WHAT...Minor flooding is occurring and minor flooding is forecast.

* WHERE...Angelina River Near Lufkin.

* WHEN...Until further notice.

* IMPACTS...At 162.0 feet, Minor lowland to diminish and end on the
lower Angelina River.

* ADDITIONAL DETAILS...
- At 8:15 PM CDT Thursday the stage was 162.5 feet.
- Recent Activity...The maximum river stage in the 24 hours
ending at 8:15 PM CDT Thursday was 162.5 feet.
- Forecast...The river is expected to rise to a crest of 163.4
feet early Saturday afternoon.
- Flood stage is 161.0 feet.
- Flood History...No available flood history.
- http://www.weather.gov/safety/flood', ' ', '2023-03-17 03:37:00+02', '2023-03-18 03:45:00+02', 'TXC005,TXC073,TXC347', '2023-03-17 13:48:34.069057+02'),
	(1074, 'TX', 'Severe', 'Gregg, TX', 'Flood Warning issued March 16 at 8:36PM CDT until March 19 at 3:10AM CDT by NWS Shreveport LA', '* WHAT...Minor flooding is forecast.

* WHERE...Rabbit Creek At Kilgore.

* WHEN...From late tonight to early Sunday morning.

* IMPACTS...At 10.0 feet, Expect lowland flooding of timber
resources in and near the creek. Some oil field operations may be
affected.

* ADDITIONAL DETAILS...
- At 7:45 PM CDT Thursday the stage was 4.3 feet.
- Forecast...The river is expected to rise above flood stage
late tonight to a crest of 11.0 feet tomorrow morning. It
will then fall below flood stage tomorrow afternoon.
- Flood stage is 10.0 feet.
- Flood History...This crest compares to a previous crest of
11.0 feet on 11/18/1969.
- http://www.weather.gov/safety/flood', ' ', '2023-03-17 03:36:00+02', '2023-03-18 03:45:00+02', 'TXC183', '2023-03-17 13:48:34.069057+02'),
	(1075, 'TX', 'Severe', 'Nacogdoches, TX; Rusk, TX; San Augustine, TX; Shelby, TX', 'Flood Warning issued March 16 at 8:35PM CDT until March 22 at 4:37AM CDT by NWS Shreveport LA', '* WHAT...Minor flooding is forecast.

* WHERE...Attoyac Bayou Near Chireno.

* WHEN...From Friday evening to early Wednesday morning.

* IMPACTS...At 16.0 feet, Expect flooded paths and secondary
roadways.  Move livestock and equipment to higher ground.

* ADDITIONAL DETAILS...
- At 7:30 PM CDT Thursday the stage was 12.4 feet.
- Forecast...The river is expected to rise above flood stage
late tomorrow evening to a crest of 15.7 feet early Sunday
afternoon. It will then fall below flood stage late Tuesday
morning.
- Flood stage is 14.0 feet.
- Flood History...This crest compares to a previous crest of
15.7 feet on 04/07/2017.
- http://www.weather.gov/safety/flood', ' ', '2023-03-17 03:35:00+02', '2023-03-18 03:45:00+02', 'TXC347,TXC401,TXC405,TXC419', '2023-03-17 13:48:34.069057+02'),
	(1076, 'TX', 'Severe', 'Anderson, TX; Cherokee, TX; Houston, TX', 'Flood Warning issued March 16 at 8:35PM CDT by NWS Shreveport LA', '* WHAT...Minor flooding is occurring and minor flooding is forecast.

* WHERE...Neches River Near Neches.

* WHEN...Until further notice.

* IMPACTS...At 14.0 feet, Minor lowland flooding.  Move livestock
and equipment to higher ground away from the river.

* ADDITIONAL DETAILS...
- At 7:30 PM CDT Thursday the stage was 12.2 feet.
- Recent Activity...The maximum river stage in the 24 hours
ending at 7:30 PM CDT Thursday was 12.6 feet.
- Forecast...The river is expected to rise to a crest of 13.5
feet early Saturday afternoon.
- Flood stage is 12.0 feet.
- Flood History...This crest compares to a previous crest of
13.3 feet on 01/20/2017.
- http://www.weather.gov/safety/flood', ' ', '2023-03-17 03:35:00+02', '2023-03-18 03:45:00+02', 'TXC001,TXC073,TXC225', '2023-03-17 13:48:34.069057+02'),
	(1077, 'TX', 'Severe', 'Hunt, TX; Kaufman, TX; Rockwall, TX', 'Flood Warning issued March 16 at 7:56AM CDT until March 18 at 4:00AM CDT by NWS Fort Worth TX', '* WHAT...Minor flooding is forecast.

* WHERE...South Fork Sabine River Near Quinlan.

* WHEN...From late tonight to early Saturday morning.

* IMPACTS...At 15.0 feet, Minor out of bank flooding will occur.

* ADDITIONAL DETAILS...
- At 7:45 AM CDT Thursday the stage was 4.9 feet.
- Flood stage is 15.0 feet.
- Forecast...The river is expected to rise above flood stage
just after midnight tonight to a crest of 15.8 feet tomorrow
morning. It will then fall below flood stage tomorrow
afternoon.', ' ', '2023-03-16 14:56:00+02', '2023-03-17 09:00:00+02', 'TXC231,TXC257,TXC397', '2023-03-17 13:48:34.069057+02'),
	(1078, 'TX', 'Severe', 'Hunt, TX', 'Flood Warning issued March 16 at 7:56AM CDT until March 18 at 1:30AM CDT by NWS Fort Worth TX', '* WHAT...Minor flooding is forecast.

* WHERE...Cowleech Fork Sabine River At Greenville.

* WHEN...From Friday morning to early Saturday morning.

* IMPACTS...At 14.0 feet, Minor out of bank flooding will occur
along the river reach.

* ADDITIONAL DETAILS...
- At 7:45 AM CDT Thursday the stage was 5.2 feet.
- Flood stage is 14.0 feet.
- Forecast...The river is expected to rise above flood stage
tomorrow morning to a crest of 14.2 feet tomorrow morning. It
will then fall below flood stage early tomorrow afternoon.', ' ', '2023-03-16 14:56:00+02', '2023-03-17 09:00:00+02', 'TXC231', '2023-03-17 13:48:34.069057+02'),
	(1079, 'TX', 'Severe', 'Anderson, TX; Cherokee, TX; Houston, TX', 'Flood Warning issued March 14 at 12:37PM CDT until March 17 at 7:00AM CDT by NWS Shreveport LA', '* WHAT...Minor flooding is occurring and minor flooding is forecast.

* WHERE...Neches River Near Neches.

* WHEN...Until Friday morning.

* IMPACTS...At 12.0 feet, Expect minor lowland flooding of the
heavily wooded floodplain. Ranchers that may have livestock and
equipment in the river bottoms should move them to higher ground.
Expect minor flooding of the boat ramp.

* ADDITIONAL DETAILS...
- At 11:30 AM CDT Tuesday the stage was 12.9 feet.
- Recent Activity...The maximum river stage in the 24 hours
ending at 11:30 AM CDT Tuesday was 13.0 feet.
- Forecast...The river is expected to fall below flood stage
early Thursday afternoon and continue falling to 10.3 feet
Sunday morning.
- Flood stage is 12.0 feet.
- Flood History...This crest compares to a previous crest of
12.5 feet on 04/10/2014.
- http://www.weather.gov/safety/flood', ' ', '2023-03-14 19:37:00+02', '2023-03-15 19:45:00+02', 'TXC001,TXC073,TXC225', '2023-03-17 13:48:34.069057+02'),
	(1080, 'VA', 'Severe', 'Cherokee; Clay; Scott; Campbell; Claiborne; Hancock; Hawkins; Sullivan; Morgan; Anderson; Union; Grainger; Hamblen; Northwest Cocke; Northwest Greene; Washington; Northwest Carter; Roane; Loudon; Knox; Jefferson; NW Blount; North Sevier; Sequatchie; Bledsoe; Rhea; Meigs; McMinn; Northwest Monroe; Marion; Hamilton; Bradley; West Polk; East Polk; Lee; Wise; Scott; Russell; Washington', 'Freeze Watch issued March 17 at 3:26AM EDT until March 18 at 9:00AM EDT by NWS Morristown TN', '* WHAT...Sub-freezing temperatures as low as 27 possible.

* WHERE...Much of southwest North Carolina, east Tennessee and
southwest Virginia.

* WHEN...From late tonight through Saturday morning.

* IMPACTS...Frost and freeze conditions could kill crops and
other sensitive vegetation.', 'Take steps now to protect tender plants from the cold. Those that
have in-ground sprinkler systems should drain them and cover
above-ground pipes to protect them from freezing.', '2023-03-17 09:26:00+02', '2023-03-17 23:00:00+02', 'NCZ060,NCZ061,TNZ012,TNZ013,TNZ014,TNZ015,TNZ016,TNZ017,TNZ035,TNZ036,TNZ037,TNZ038,TNZ039,TNZ040,TNZ042,TNZ044,TNZ046,TNZ067,TNZ068,TNZ069,TNZ070,TNZ071,TNZ073,TNZ081,TNZ082,TNZ083,TNZ084,TNZ085,TNZ086,TNZ098,TNZ099,TNZ100,TNZ101,TNZ102,VAZ001,VAZ002,VAZ005,VAZ006,VAZ008', '2023-03-17 13:48:34.069057+02'),
	(1081, 'WI', 'Severe', 'Ashland; Iron', 'Winter Storm Warning issued March 17 at 3:16AM CDT until March 18 at 7:00AM CDT by NWS Duluth MN', '* WHAT...Heavy snow. Additional snow accumulations of 3 to 7
inches, except 6 to 13 inches for east-central and northeast
Ashland and northern Iron counties.

* WHERE...Ashland and Iron Counties. This includes the Tribal
Lands of the northwestern area of the Lac du Flambeau Band and
the Bad River Reservation.

* WHEN...Until 7 AM CDT Saturday.

* IMPACTS...Travel could be very difficult to impossible. The
hazardous conditions could impact the morning or evening
commute.

* ADDITIONAL DETAILS...Snow squalls are possible this afternoon
which may briefly reduce visibility to less than 1/4 mile.', 'If you must travel, keep an extra flashlight, food, and water in
your vehicle in case of an emergency.

The latest road conditions can be obtained by calling 5 1 1.
Road conditions can also be found at 511mn.org for Minnesota or
511wi.gov for Wisconsin.', '2023-03-17 10:16:00+02', '2023-03-17 22:30:00+02', 'WIZ003,WIZ004', '2023-03-17 13:48:34.069057+02'),
	(1082, 'WI', 'Severe', 'Douglas; Bayfield', 'Winter Storm Warning issued March 17 at 3:16AM CDT until March 18 at 1:00AM CDT by NWS Duluth MN', '* WHAT...Heavy snow. Additional snow accumulations of 2 to 5
inches, except 4 to 10 inches for northeast Douglas and northern
Bayfield counties.

* WHERE...Douglas and Bayfield Counties. This includes the
Tribal Lands of the Red Cliff Band.

* WHEN...Until 1 AM CDT Saturday.

* IMPACTS...Travel could be very difficult. The hazardous
conditions could impact the morning or evening commute.

* ADDITIONAL DETAILS...Snow squalls are possible this afternoon
which may briefly reduce visibility to less than 1/4 mile.', 'If you must travel, keep an extra flashlight, food, and water in
your vehicle in case of an emergency.

The latest road conditions can be obtained by calling 5 1 1.
Road conditions can also be found at 511mn.org for Minnesota or
511wi.gov for Wisconsin.', '2023-03-17 10:16:00+02', '2023-03-17 22:30:00+02', 'WIZ001,WIZ002', '2023-03-17 13:48:34.069057+02'),
	(1083, 'WI', 'Severe', 'Vilas', 'The Winter Storm Watch has been replaced. Please see the latest information from NWS Green Bay WI on this developing situation.', 'The Winter Storm Watch has been replaced. Please see the latest information from NWS Green Bay WI on this developing situation.', 'Slow down and use caution while traveling. The latest road
conditions for the state you are calling from can be obtained by
calling 5 1 1.', '2023-03-16 10:58:00+02', '2023-03-16 11:14:05+02', 'WIZ005', '2023-03-17 13:48:34.069057+02'),
	(1084, 'WI', 'Severe', 'Vilas', 'Winter Storm Watch issued March 15 at 7:04PM CDT until March 17 at 7:00PM CDT by NWS Green Bay WI', '* WHAT...Heavy snow possible. Total snow accumulations between 5 and
7 inches possible. Winds could gust as high as 35 mph.

* WHERE...Vilas County.

* WHEN...From Thursday evening through Friday evening.

* IMPACTS...Travel could be very difficult. The hazardous conditions
could impact the Friday morning and evening commutes.', 'Monitor the latest forecasts for updates on this situation, and
consider adjusting travel plans.', '2023-03-16 02:04:00+02', '2023-03-16 11:00:00+02', 'WIZ005', '2023-03-17 13:48:34.069057+02'),
	(1085, 'WI', 'Severe', 'Oneida; Forest; Florence', 'Winter Storm Watch issued March 15 at 7:04PM CDT until March 17 at 7:00PM CDT by NWS Green Bay WI', '* WHAT...Heavy snow possible. Total snow accumulations between 4 and
6 inches possible. Winds could gust as high as 40 mph.

* WHERE...Oneida, Florence, and Forest Counties.

* WHEN...From Thursday evening through Friday evening.

* IMPACTS...Plan on slippery road conditions. Patchy blowing snow
could significantly reduce visibility. The hazardous conditions
could impact the Friday morning and evening commutes.', 'Monitor the latest forecasts for updates on this situation, and
consider adjusting travel plans.', '2023-03-16 02:04:00+02', '2023-03-16 11:00:00+02', 'WIZ010,WIZ011,WIZ012', '2023-03-17 13:48:34.069057+02');
/*!40000 ALTER TABLE "weather_t" ENABLE KEYS */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
