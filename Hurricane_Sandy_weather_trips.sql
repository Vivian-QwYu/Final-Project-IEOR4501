
WITH RECURSIVE hours(x) AS (
SELECT '2012-10-22 00:00:00'AS hour
UNION ALL
SELECT DATETIME(x, '+1 HOUR') AS hour FROM hours WHERE x<'2012-11-06 23:59:59')

SELECT strftime('%Y-%m-%d %H',x) AS time, COUNT(trip_time) AS number, AVG(HourlyWindSpeed) AS WindSpeed, SUM(HourlyPrecipitation) AS Precipitation
FROM hours LEFT OUTER JOIN hourly_weather ON strftime('%Y-%m-%d %H',DATE) = time
LEFT OUTER JOIN 
(
SELECT strftime('%Y-%m-%d %H',pickup_datetime) AS trip_time
FROM taxi_trip
WHERE pickup_datetime BETWEEN '2012-10-22' AND '2012-11-07'
UNION ALL
SELECT strftime('%Y-%m-%d %H',pickup_datetime) AS trip_time
FROM uber_trip
WHERE pickup_datetime BETWEEN '2012-10-22' AND '2012-11-07')
ON trip_time = time
GROUP BY time;
