
SELECT ride_date, DailySnowfall, number_of_rides
FROM (daily_weather as w
JOIN(
SELECT ride_date,
COUNT(*) AS number_of_rides
FROM(
SELECT strftime('%Y-%m-%d', pickup_datetime) AS ride_date
FROM taxi_trips
WHERE pickup_datetime >= '2020-01-01' AND pickup_datetime < '2024-09-01'
UNION ALL
SELECT strftime('%Y-%m-%d', pickup_datetime) AS ride_date
FROM uber_trips
WHERE pickup_datetime >= '2020-01-01' AND pickup_datetime < '2024-09-01')
GROUP BY ride_date) AS t on w.DATE = t.ride_date)
ORDER BY DailySnowfall DESC
LIMIT 10
