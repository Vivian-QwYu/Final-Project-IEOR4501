
WITH hired_trip AS (
SELECT date(pickup_datetime) AS date_day FROM taxi_trip
WHERE pickup_datetime BETWEEN "2014-01-01" AND "2015-01-01"
UNION ALL
SELECT date(pickup_datetime) AS date_day FROM uber_trip
WHERE pickup_datetime BETWEEN "2014-01-01" AND "2015-01-01")

SELECT date_day AS date, COUNT(*) AS number, WindSpeed
FROM hired_trip LEFT JOIN(
SELECT date(DATE) as day,WindSpeed FROM daily_weather 
WHERE DATE BETWEEN "2014-01-01" AND "2015-01-01"
ORDER BY WindSpeed DESC 
LIMIT 10) ON date = day
GROUP BY date
ORDER BY WindSpeed DESC
LIMIT 10;
