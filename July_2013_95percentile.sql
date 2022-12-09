
WITH hired_trip AS (
SELECT pickup_datetime, distance FROM taxi_trip
WHERE pickup_datetime BETWEEN "2013-07-01" AND "2013-08-01"
UNION ALL
SELECT pickup_datetime, distance FROM uber_trip
WHERE pickup_datetime BETWEEN "2013-07-01" AND "2013-08-01")

SELECT distance AS "95%_percentile_of_distance" FROM hired_trip
ORDER BY distance ASC
LIMIT 1
OFFSET (
SELECT COUNT(*)
FROM hired_trip
) * 95/100 -1;
