
CREATE TABLE IF NOT EXISTS taxi_trip
(
    id INTEGER PRIMARY KEY,
    pickup_datetime DATE,
    pickup_latitude FLOAT64,
    pickup_longitude FLOAT64,
    dropoff_latitude FLOAT64,
    dropoff_longitude FLOAT64,
    tip_amount FLOAT64,
    distance FLOAT64
);

CREATE TABLE IF NOT EXISTS uber_trip
(
    id INTEGER PRIMARY KEY,
    pickup_datetime DATE,
    pickup_latitude FLOAT64,
    pickup_longitude FLOAT64,
    dropoff_latitude FLOAT64,
    dropoff_longitude FLOAT64,
    distance FLOAT64
);

CREATE TABLE IF NOT EXISTS hourly_weather
(
    id INTEGER PRIMARY KEY,
    DATE DATE,
    HourlyWindSpeed FLOAT64,
    HourlyPrecipitation FLOAT64
);

CREATE TABLE IF NOT EXISTS daily_weather
(
    id INTEGER PRIMARY KEY,
    DATE DATE,
    Precipitation FLOAT64,
    WindSpeed FLOAT64
);

CREATE TABLE IF NOT EXISTS daily_sun
(
    id INTEGER PRIMARY KEY,
    DATE DATE,
    Sunrise STRING,
    Sunset STRING
);
