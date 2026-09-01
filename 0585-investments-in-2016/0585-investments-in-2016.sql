# Write your MySQL query statement below
WITH flagged_insurance AS (
    SELECT 
        tiv_2016,
        COUNT(*) OVER (PARTITION BY tiv_2015) AS tiv_2015_cnt,
        COUNT(*) OVER (PARTITION BY lat, lon) AS location_cnt
    FROM Insurance
)
SELECT 
    ROUND(SUM(tiv_2016), 2) AS tiv_2016
FROM flagged_insurance
WHERE tiv_2015_cnt > 1 
  AND location_cnt = 1;

-- Synced seamlessly with LeetHub Pro
-- Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
-- Get it here: https://chromewebstore.google.com/detail/bcilpkkbokcopmabingnndookdogmbna