
SELECT 
strftime('%H', pickup_datetime) AS hour_of_day,
COUNT(pickup_datetime) AS number_of_taxi
FROM taxi_trips
WHERE pickup_datetime >= '2020-01-01' AND pickup_datetime < '2024-09-01'
GROUP BY hour_of_day
ORDER BY number_of_taxi DESC
