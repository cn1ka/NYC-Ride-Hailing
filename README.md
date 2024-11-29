# IEOR 4501 Final Project
## Overview
This project analyzes hired-ride trip data from Uber and NYC Yellow Taxis (January 2020 to August 2024) alongside local historical weather data. The goal is to explore trends and answer specific questions using data processing, SQL queries, and visualizations. The results aim to uncover insights into ride-hailing patterns and weather impact. NYC Taxi and Uber data are sourced from [NYC TLC Trip Record Data](https://www.nyc.gov/site/tlc/about/tlc-trip-record-data.page).


The note book has four sections:
- **Data Preprossing**: Download, clean, and sample data to manage size and ensure usability.
- **Storing Data**: Store processed datasets in a SQLite database.
- **Understanding Data**: Execute SQL queries to extract insights.
- **Visualizaing Data**: Create informative visualization to support analysis.
## Author Information
- **Group Name**: Project Group 17
- **Author Name**: Nan Chen, Grace Li
- **UNIs**: [nc3137, yl4294]
## Features
### Data Preprocessing
- Programmatically downloads Yellow Taxi and Uber trip data as Parquet files.
- Applies Cochran’s sample size formula for efficient sampling, as both the Yellow Taxi and Uber datasets contain millions of data points each month.
- Cleans datasets using pandas and geopandas, including normalization and filtering.
### Storing Data
- Populates a SQLite database with cleaned datasets.
- Includes tables for Yellow Taxi, Uber, hourly weather, and daily weather data.
### Understanding Data
- The popularity of Yellow Taxi rides for each hour of the day between January 2020 and August 2024, sorted in descending order by popularity.
- The popularity of Uber rides for each day of the week during the same period, sorted in descending order.
- Determine the 95th percentile of trip distances for all rides in January 2024.
- Identify the top 10 busiest days in 2023.
- Find the 10 snowiest days from January 2020 to August 2024 and the number of hired trips made on those days.
- Tropical Storm Ophelia Analysis (September 28–30, 2023)
### Visualizing Data
- **Most Popular Hour to Take a Taxi**: A bar chart displaying the number of Yellow Taxi rides for each hour of the day.
- **Most Popular Month to Hire a Taxi or Uber**: A line chart showing the average distance traveled per month (January 2020 to August 2024) for both taxis and Ubers combined, with a 90% confidence interval.
- **Most Popular Day for Rides to NYC Airports**: A grouped bar chart comparing drop-offs by day of the week for three major NYC airports (JFK, LGA, EWR).
- **Monthly Earnings from Hired Rides**: A stacked bar chart showing the breakdown of monthly earnings (base fare, surcharges, taxes, tolls) for Yellow Taxis and Ubers.
- **Effect of Precipitation or Distance On Tips**: A 2x2 grid of scatter plots showing relationships between tips, distance, and weather.
- **Heatmap of Hired Trips in 2020**: A geospatial heatmap overlaying NYC to show the density of hired trips in 2020.

