
SELECT w.date,w.hour,
    COALESCE(total_rides, 0) AS total_rides,
    COALESCE(total_precipitation, 0) AS total_precipitation,
    COALESCE(avg_wind_speed, 0) AS avg_wind_speed
FROM (
SELECT strftime('%Y-%m-%d', DATE) AS date,    
    hour,  
    SUM(HourlyPrecipitation) AS total_precipitation,
    AVG(HourlyWindSpeed) AS avg_wind_speed
FROM hourly_weather
WHERE DATE >= '2023-09-25' AND DATE <= '2023-10-03'
GROUP BY date, hour) AS w
LEFT JOIN(
    SELECT date, 
    hour, 
    SUM(number_of_taxi + number_of_uber) AS total_rides
    FROM (
    SELECT strftime('%Y-%m-%d', pickup_datetime) AS date,
        strftime('%H', pickup_datetime) AS hour,
        COUNT(*) AS number_of_taxi,  
        0 AS number_of_uber     
    FROM taxi_trips
    WHERE pickup_datetime >= '2023-09-25' AND pickup_datetime <= '2023-10-03'
    GROUP BY date, hour
        
    UNION ALL
        
    SELECT strftime('%Y-%m-%d', pickup_datetime) AS date,
        strftime('%H', pickup_datetime) AS hour,
        COUNT(*) AS number_of_uber,    
        0 AS number_of_taxi
    FROM uber_trips
    WHERE pickup_datetime >= '2023-09-25' AND pickup_datetime <= '2023-10-03'
    GROUP BY date, hour)
    GROUP BY date, hour) AS t
ON w.date = t.date AND w.hour = t.hour
ORDER BY w.date, w.hour
