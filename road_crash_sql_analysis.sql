
-- SQL Analysis — Victorian Road Crash Intelligence & Severity Prediction

-- 1. Data Import into PostgreSQL

-- 1.1 Create a table to store Victorian road crash records

CREATE TABLE road_crashes (              -- CREATE TABLE: Creates a new table
    accident_no TEXT PRIMARY KEY,        -- TEXT: Unique accident identifier
    accident_date DATE,                  -- DATE: Stores accident dates
    accident_time TIME,                  -- TIME: Stores accident times
    accident_type_desc TEXT,
    dca_desc TEXT,
    light_condition INTEGER,             -- INTEGER: Whole numbers
    no_of_vehicles INTEGER,
    no_persons_killed INTEGER,
    no_persons_inj_2 INTEGER,
    no_persons_inj_3 INTEGER,
    road_geometry_desc TEXT,
    severity INTEGER,
    speed_zone INTEGER,
    rma TEXT,
    hour INTEGER,
    year INTEGER,
    month INTEGER,
    day_of_week TEXT,
    road_name TEXT,
    road_type TEXT,
    atmosph_cond_desc TEXT,
    surface_cond_desc TEXT,
    lga_name TEXT,
    deg_urban_name TEXT,
    latitude NUMERIC,                    -- NUMERIC: Decimal values
    longitude NUMERIC,
    vehicle_count NUMERIC,
    avg_vehicle_age NUMERIC,
    total_occupants NUMERIC,
    total_people INTEGER,
    speed_zone_clean NUMERIC,
    light_condition_desc TEXT,
    weather_group TEXT,
    vehicle_group TEXT
);                                       -- ; Ends the statement

-- Improt the data in our table from csv file
-- Check the imported road crash records
SELECT *
FROM road_crashes
LIMIT 5;

-- 2. Historical Road Crash Analysis
-- 2.1 Annual Road Crash Trends

-- Calculate the total number of recorded crashes each year
SELECT
    year,                            -- Year of the accident
    COUNT(*) AS total_crashes        -- COUNT(*): Counts accidents
FROM road_crashes                   -- FROM: Source table
WHERE year <= 2025                  -- WHERE: Excludes incomplete 2026
GROUP BY year                       -- GROUP BY: Combines crashes by year
ORDER BY year;                      -- ORDER BY: Oldest to newest

-- Key Finding: Recorded crashes fluctuated between 2012 and 2025,
-- peaking at 15,779 in 2016 and falling to 12,170 in 2020.
-- By 2025, crashes reached 15,468, approximately 11.2% above 2012.


-- 2.2 Annual Fatal and Serious Crash Trends

-- Compare fatal, serious, and other-injury crashes by year
SELECT
    year,
    COUNT(*) FILTER (WHERE severity = 1) AS fatal_crashes,
    COUNT(*) FILTER (WHERE severity = 2) AS serious_crashes,
    COUNT(*) FILTER (WHERE severity = 3) AS other_injury_crashes,
    ROUND(
        100.0 * COUNT(*) FILTER (WHERE severity IN (1, 2))
        / NULLIF(COUNT(*), 0), 2
    ) AS severe_crash_pct
FROM road_crashes
WHERE year <= 2025 AND severity IN (1, 2, 3)
GROUP BY year
ORDER BY year;

-- Key Finding: The severe-crash proportion peaked at 45.12% in 2018,
-- declined to 33.30% in 2022, and reached 35.82% in 2025.
-- This indicates an overall decline from the 2018 peak, despite recent fluctuations.


-- 2.3 Average Monthly Road Crash Patterns

-- Calculate average monthly crashes across 2012–2025
SELECT
    month,
    ROUND(COUNT(*) / 14.0, 0) AS avg_monthly_crashes  -- 14 complete years
FROM road_crashes
WHERE year BETWEEN 2012 AND 2025
GROUP BY month
ORDER BY month;

-- Key Finding: March recorded the highest average monthly crashes (1,363),
-- while September recorded the lowest (1,065) during 2012–2025.


-- 2.4 Day-of-Week Road Crash Patterns

-- Calculate average crashes for each day of the week
SELECT
    day_of_week,
    COUNT(*) AS total_crashes,
    ROUND(COUNT(*) * 1.0 / COUNT(DISTINCT accident_date), 2)
        AS avg_daily_crashes
FROM road_crashes
WHERE year BETWEEN 2012 AND 2025
GROUP BY day_of_week
ORDER BY avg_daily_crashes DESC;

-- Key Finding: Friday recorded the highest average crashes (43.58),
-- while Sunday recorded the lowest (33.51), with Friday approximately
-- 30% higher. Crash frequency generally increased towards Friday.


-- 2.5 Hourly Road Crash Patterns

-- Calculate average crashes per hour across 2012–2025
SELECT
    hour,
    COUNT(*) AS total_crashes,
    ROUND(COUNT(*) / 5113.0, 2) AS avg_crashes_per_hour
FROM road_crashes
WHERE year BETWEEN 2012 AND 2025
GROUP BY hour
ORDER BY hour;

-- Key Finding: Crash frequency peaked between 3 PM and 6 PM,
-- with 3 PM recording the highest daily average (3.25 crashes).
-- A smaller morning peak occurred at 8 AM (2.50 crashes).


-- 3. Geographic Road Crash Analysis
-- 3.1 Top 10 LGAs by Road Crash Frequency

-- Identify the 10 LGAs with the highest crash counts
SELECT
    lga_name,
    COUNT(*) AS total_crashes
FROM road_crashes
WHERE year BETWEEN 2012 AND 2025
  AND lga_name IS NOT NULL
GROUP BY lga_name
ORDER BY total_crashes DESC
LIMIT 10;

-- Key Finding: Melbourne recorded the highest number of crashes
-- (10,434), followed by Casey (9,148) and Geelong (7,896).
-- These figures indicate crash concentration, not relative road risk.


-- 3.2 LGAs with the Highest Severe Crash Proportions

-- Compare crash severity across LGAs with at least 500 crashes
SELECT
    lga_name,
    COUNT(*) AS total_crashes,
    COUNT(*) FILTER (WHERE severity IN (1, 2)) AS severe_crashes,
    ROUND(
        100.0 * COUNT(*) FILTER (WHERE severity IN (1, 2))
        / COUNT(*), 2
    ) AS severe_crash_pct
FROM road_crashes
WHERE year BETWEEN 2012 AND 2025
  AND lga_name IS NOT NULL
  AND severity IN (1, 2, 3)
GROUP BY lga_name
HAVING COUNT(*) >= 500
ORDER BY severe_crash_pct DESC
LIMIT 10;

-- Key Finding: Strathbogie recorded the highest severe crash
-- proportion (58.94%), followed by Golden Plains (56.24%).
-- Geelong stood out for both high crash volume (7,896)
-- and a high severe crash proportion (48.05%).


-- 3.3 Urban vs Rural Road Crash Patterns

-- Check the available urban/rural location categories
SELECT
    deg_urban_name,
    COUNT(*) AS total_crashes
FROM road_crashes
WHERE year BETWEEN 2012 AND 2025
GROUP BY deg_urban_name
ORDER BY total_crashes DESC;


-- 3.3 Urban vs Rural Road Crash Analysis

-- Compare crash frequency and severity across location types
SELECT
    CASE
        WHEN deg_urban_name IN ('MELB_URBAN', 'MELBOURNE_CBD')
            THEN 'Metropolitan Melbourne'
        WHEN deg_urban_name IN ('LARGE_PROVINCIAL_CITIES',
                                'SMALL_CITIES', 'TOWNS', 'SMALL_TOWNS')
            THEN 'Regional Cities & Towns'
        WHEN deg_urban_name = 'RURAL_VICTORIA'
            THEN 'Rural Victoria'
    END AS area_group,

    COUNT(*) AS total_crashes,

    COUNT(*) FILTER (WHERE severity IN (1, 2))
        AS severe_crashes,

    ROUND(
        100.0 * COUNT(*) FILTER (WHERE severity IN (1, 2))
        / COUNT(*), 2
    ) AS severe_crash_pct

FROM road_crashes
WHERE year BETWEEN 2012 AND 2025
  AND severity IN (1, 2, 3)
  AND deg_urban_name IN (
      'MELB_URBAN', 'MELBOURNE_CBD',
      'LARGE_PROVINCIAL_CITIES', 'SMALL_CITIES',
      'TOWNS', 'SMALL_TOWNS', 'RURAL_VICTORIA'
  )

GROUP BY area_group
ORDER BY severe_crash_pct DESC;

-- Key Finding: Metropolitan Melbourne recorded the most crashes
-- (127,235), but Rural Victoria had the highest severe crash
-- proportion (47.90%), compared with 34.81% in metropolitan
-- Melbourne and 34.32% in regional cities and towns.


-- 4. Crash Severity & Road Conditions Analysis
-- 4.1 Crash Severity by Speed Zone

-- Compare crash frequency and severity across speed zones
SELECT
    speed_zone_clean AS speed_zone_kmh,
    COUNT(*) AS total_crashes,
    COUNT(*) FILTER (WHERE severity IN (1, 2)) AS severe_crashes,
    ROUND(
        100.0 * COUNT(*) FILTER (WHERE severity IN (1, 2))
        / COUNT(*), 2
    ) AS severe_crash_pct
FROM road_crashes
WHERE year BETWEEN 2012 AND 2025
  AND severity IN (1, 2, 3)
  AND speed_zone_clean IS NOT NULL
GROUP BY speed_zone_clean
ORDER BY speed_zone_clean;

-- Key Finding: The 60 km/h zone recorded the most crashes (65,793).
-- Severe crash proportions generally increased with speed zone,
-- reaching 50.18% at 100 km/h compared with 31.82% at 40 km/h.


-- 4.2 Crash Severity by Lighting Conditions

-- Compare lighting conditions from highest to lowest severe crash percentage
SELECT
    light_condition_desc,
    COUNT(*) AS total_crashes,
    COUNT(*) FILTER (WHERE severity IN (1, 2)) AS severe_crashes,
    ROUND(
        100.0 * COUNT(*) FILTER (WHERE severity IN (1, 2))
        / COUNT(*), 2
    ) AS severe_crash_pct
FROM road_crashes
WHERE year BETWEEN 2012 AND 2025
  AND severity IN (1, 2, 3)
  AND light_condition_desc IS NOT NULL
  AND light_condition_desc NOT IN ('Unknown', 'Dark - Lights unknown')
GROUP BY light_condition_desc
ORDER BY severe_crash_pct DESC;

-- Key Finding: Darkness without street lights had the highest
-- severe crash proportion (51.36%), compared with 36.78%
-- during daylight, a difference of 14.58 percentage points.


-- 4.3 Crash Severity by Accident Type

-- Compare accident types by severe crash percentage
SELECT
    accident_type_desc,
    COUNT(*) AS total_crashes,
    COUNT(*) FILTER (WHERE severity IN (1, 2)) AS severe_crashes,
    ROUND(
        100.0 * COUNT(*) FILTER (WHERE severity IN (1, 2))
        / COUNT(*), 2
    ) AS severe_crash_pct
FROM road_crashes
WHERE year BETWEEN 2012 AND 2025
  AND severity IN (1, 2, 3)
  AND accident_type_desc IS NOT NULL
GROUP BY accident_type_desc
ORDER BY severe_crash_pct DESC;

-- Key Finding: Collisions with fixed objects had the highest severe
-- crash proportion (51.95%), followed by pedestrian collisions (47.39%).
-- Vehicle-to-vehicle collisions were most frequent (131,795 crashes)
-- and accounted for the largest number of severe crashes (42,842).


-- 4.4 Crash Severity by Weather Conditions

-- Compare crash severity across different weather conditions
SELECT
    weather_group,
    COUNT(*) AS total_crashes,
    COUNT(*) FILTER (WHERE severity IN (1, 2)) AS severe_crashes,
    ROUND(
        100.0 * COUNT(*) FILTER (WHERE severity IN (1, 2))
        / COUNT(*), 2
    ) AS severe_crash_pct
FROM road_crashes
WHERE year BETWEEN 2012 AND 2025
  AND severity IN (1, 2, 3)
  AND weather_group IS NOT NULL
GROUP BY weather_group
ORDER BY severe_crash_pct DESC;


-- Key Finding: Severe crash proportions were similar in clear
-- weather (39.55%) and adverse/mixed weather (38.23%).
-- Weather categories showed only a small severity difference.
-- Unknown weather records were excluded from interpretation.


-- 4.5 Crash Severity by Road Geometry

-- Compare crash severity across different road layouts
SELECT
    road_geometry_desc,
    COUNT(*) AS total_crashes,
    COUNT(*) FILTER (WHERE severity IN (1, 2))
        AS severe_crashes,
    ROUND(
        100.0 * COUNT(*) FILTER (WHERE severity IN (1, 2))
        / COUNT(*), 2
    ) AS severe_crash_pct
FROM road_crashes
WHERE year BETWEEN 2012 AND 2025
  AND severity IN (1, 2, 3)
  AND road_geometry_desc IS NOT NULL
GROUP BY road_geometry_desc
ORDER BY severe_crash_pct DESC;

-- Key Finding: Crashes occurring away from intersections had
-- the highest crash volume (104,124) and a severe crash
-- proportion of 40.43%, compared with 32.95% at cross
-- intersections, a difference of 7.48 percentage points.


-- 5. Final SQL Data Validation
-- 5.1 Verify Crash Records and Severity Totals

SELECT
    COUNT(*) AS total_crashes,
    COUNT(DISTINCT accident_no) AS unique_accidents,
    COUNT(*) FILTER (WHERE severity = 1) AS fatal_crashes,
    COUNT(*) FILTER (WHERE severity = 2) AS serious_crashes,
    COUNT(*) FILTER (WHERE severity = 3) AS other_injury_crashes,
    COUNT(*) FILTER (
        WHERE severity IS NULL OR severity NOT IN (1, 2, 3)
    ) AS excluded_severity_records,
    COUNT(*) FILTER (
        WHERE accident_date IS NULL
           OR EXTRACT(YEAR FROM accident_date) <> year
    ) AS date_issues
FROM road_crashes
WHERE year BETWEEN 2012 AND 2025;


-- Key Finding: Validation confirmed 202,069 unique crash records
-- for 2012–2025, with no duplicate accident IDs or date issues.
-- All records were accounted for across severity categories.


