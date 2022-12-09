
SELECT strftime ("%w",pickup_datetime) AS day, COUNT(*) AS counts
FROM uber_trip
GROUP BY day
ORDER BY counts DESC;
