-- create database
create or replace database weather_db;
use weather_db;
create or replace schema weather_schema;
-- create schema
use schema weather_schema;
-- create weather table
create or replace  table json_weather_data (v variant);
--- create external stage 

create stage nyc_weather
url = 's3://snowflake-workshop-lab/zero-weather-nyc';
-- list external stage 
list @nyc_weather;

use warehouse compute_wh;
--- loading data into stage using external stage
copy into json_weather_data from @nyc_weather file_format = (type = json strip_outer_array = true);

    
// create a view that will put structure onto the semi-structured data
create or replace view json_weather_data_view as
select
    v:obsTime::timestamp as observation_time,
    v:station::string as station_id,
    v:name::string as city_name,
    v:country::string as country,
    v:latitude::float as city_lat,
    v:longitude::float as city_lon,
    v:weatherCondition::string as weather_conditions,
    v:coco::int as weather_conditions_code,
    v:temp::float as temp,
    v:prcp::float as rain,
    v:tsun::float as tsun,
    v:wdir::float as wind_dir,
    v:wspd::float as wind_speed,
    v:dwpt::float as dew_point,
    v:rhum::float as relative_humidity,
    v:pres::float as pressure
from
    json_weather_data
where
    station_id = '72502';

-- weather view
select * from JSON_WEATHER_DATA_VIEW;

