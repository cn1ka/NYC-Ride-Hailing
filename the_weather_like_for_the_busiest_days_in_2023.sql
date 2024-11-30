
SELECT ride_date, number_of_rides, average_trip_distance,
DailyPrecipitation/24 AS Average_DailyPrecipitation ,DailyAverageWindSpeed
FROM (
    SELECT ride_date, 
    COUNT(*) AS number_of_rides,
    AVG(trip_distance) AS average_trip_distance
    FROM(
    SELECT strftime('%Y-%m-%d', pickup_datetime) AS ride_date, trip_distance
    FROM taxi_trips
    WHERE pickup_datetime >= '2023-01-01' AND pickup_datetime < '2024-01-01'
    UNION ALL
    SELECT strftime('%Y-%m-%d', pickup_datetime) AS ride_date, 
           trip_miles AS trip_distance
    FROM uber_trips
    WHERE pickup_datetime >= '2023-01-01' AND pickup_datetime < '2024-01-01')
    GROUP BY ride_date
    ORDER BY number_of_rides DESC
    LIMIT 10) AS total_rides
JOIN daily_weather AS w ON total_rides.ride_date = w.DATE
