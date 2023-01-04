-- Create new table for airline delays
CREATE TABLE airline_delays
(
 	year SERIAL,  
 	month varchar NOT NULL,
	carrier varchar,
 	carrier_name varchar NOT NULL,
 	airport varchar NOT NULL,
 	airport_name varchar NOT NULL,
 	arr_flights int,
 	arr_del15 int,
 	carrier_ct int,
 	weather_ct int,
 	nas_ct int,
 	security_ct int,
 	late_aircraft_ct int,
 	arr_cancelled int,
 	arr_diverted int,
 	arr_delay int,
 	carrier_delay int,
 	weather_delay int,
 	nas_delay int,
 	security_delay int,
	late_aircraft_delay int
);

------------------------------------------------------------------------------------------

-- Check table data
select *
from airline_delays

-- Airline with the most weather delays 
Select month, carrier_name, weather_ct, weather_delay
from airline_delays
order by weather_ct asc

-- Average weather delay
SELECT AVG(weather_ct)
FROM airline_delays
