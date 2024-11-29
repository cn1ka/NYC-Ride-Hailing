
SELECT
    s.DATE,
    COUNT(*) AS count
FROM
    taxi_trips AS t
JOIN
    daily_sun_time AS s
ON
    strftime('%Y-%m-%d', t.pickup_datetime) = s.DATE
WHERE
    strftime('%Y-%m-%d', t.pickup_datetime) BETWEEN '2020-01-01' AND '2023-12-31'
    AND strftime('%H', t.pickup_datetime) >= strftime('%H', s.Sunrise)
    AND strftime('%H', t.pickup_datetime) <= strftime('%H', s.Sunset)
GROUP BY
    s.DATE
ORDER BY
    count DESC
LIMIT 10;

