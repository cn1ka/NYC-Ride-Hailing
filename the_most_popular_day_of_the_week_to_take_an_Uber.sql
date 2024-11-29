
SELECT 
strftime('%w', pickup_datetime) AS day_of_week,
COUNT(pickup_datetime) AS number_of_uber
FROM uber_trips
WHERE pickup_datetime >= '2020-01-01' AND pickup_datetime < '2024-09-01'
GROUP BY day_of_week
ORDER BY number_of_uber DESC
