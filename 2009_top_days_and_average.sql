
WITH hired_trip AS (
SELECT pickup_datetime, distance FROM taxi_trip
WHERE pickup_datetime BETWEEN "2009-01-01" AND "2010-01-01"
UNION ALL
SELECT pickup_datetime, distance FROM uber_trip
WHERE pickup_datetime BETWEEN "2009-01-01" AND "2010-01-01")

SELECT date(pickup_datetime) AS date, AVG(distance) AS avg_distance, COUNT(*) AS number
FROM hired_trip
GROUP BY date
ORDER BY number DESC
LIMIT 10;
