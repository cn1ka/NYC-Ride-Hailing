
SELECT trip_distance
FROM (
    SELECT trip_distance,
    ROW_NUMBER() OVER (ORDER BY trip_distance ASC) AS row_num,
    COUNT(*) OVER () AS total_count
FROM (
    SELECT trip_distance
    FROM taxi_trips
    WHERE pickup_datetime >= '2024-01-01' AND pickup_datetime < '2024-02-01'
    UNION ALL
    SELECT trip_miles AS trip_distance
    FROM uber_trips
    WHERE pickup_datetime >= '2024-01-01' AND pickup_datetime < '2024-02-01') 
) 
WHERE row_num = FLOOR(total_count * 0.95)
