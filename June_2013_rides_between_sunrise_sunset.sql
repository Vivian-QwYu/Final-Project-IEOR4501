
SELECT strftime("%Y-%m-%d",pickup_datetime) AS date, COUNT(*) AS counts
FROM taxi_trip JOIN daily_sun ON strftime("%Y-%m-%d",DATE) = strftime("%Y-%m-%d",pickup_datetime)
WHERE strftime("%H:%M",pickup_datetime) BETWEEN ("0"||SUBSTRING(Sunrise,1,1)||":"||SUBSTRING(Sunrise,2,2)) AND (SUBSTRING(Sunset,1,2)||":"||SUBSTRING(Sunset,3,2))
AND date BETWEEN "2013-06-01" AND "2013-07-01"
GROUP BY date;
