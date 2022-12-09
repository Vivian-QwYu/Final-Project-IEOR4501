
SELECT strftime ("%H",pickup_datetime) AS hour, COUNT(*) AS counts
FROM taxi_trip
GROUP BY hour
ORDER BY counts DESC;
