
Create Table IF NOT EXISTS hourly_weather (
   id INTEGER PRIMARY KEY,
   DATE DATETIME,
   hour INTEGER,
   HourlyPrecipitation REAL,
   HourlyWindSpeed REAL
);

Create Table IF NOT EXISTS daily_weather (
   id INTEGER PRIMARY KEY,
   DATE DATETIME,
   DailyPrecipitation REAL,
   DailyAverageWindSpeed REAL,
   DailySnowfall REAL
);

CREATE TABLE IF NOT EXISTS taxi_trips (
   id INTEGER PRIMARY KEY,
   pickup_datetime DATETIME,
   dropoff_datetime DATETIME,
   trip_distance REAL,
   pickup_longitude REAL,
   pickup_latitude REAL,
   dropoff_longitude REAL,
   dropoff_latitude REAL,
   fare_amount REAL,
   surcharge REAL,
   taxes REAL,
   tolls_amount REAL,
   tip_amount REAL
);

Create Table IF NOT EXISTS uber_trips (
   id INTEGER PRIMARY KEY,
   request_datetime DATETIME,
   driver_arrived_datetime DATETIME,
   pickup_datetime DATETIME,
   dropoff_datetime DATETIME,
   trip_miles REAL,
   trip_time_seconds INTEGER,
   pickup_longitude REAL,
   pickup_latitude REAL,
   dropoff_longitude REAL,
   dropoff_latitude REAL,
   base_passenger_fare REAL,
   tolls REAL,
   black_car_fund REAL,
   sales_tax REAL,
   congestion_surcharge REAL,
   airport_fee REAL,
   tips REAL,
   all_surcharge REAL
);
