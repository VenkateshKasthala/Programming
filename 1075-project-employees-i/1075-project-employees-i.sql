# Write your MySQL query statement below
SELECT 
    P.PROJECT_ID, ROUND(SUM(E.EXPERIENCE_YEARS)/COUNT(P.EMPLOYEE_ID), 2) AS AVERAGE_YEARS
    FROM PROJECT P
    JOIN EMPLOYEE E
    ON P.EMPLOYEE_ID = E.EMPLOYEE_ID
    GROUP BY P.PROJECT_ID;

-- Synced seamlessly with LeetHub Pro
-- Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
-- Get it here: https://chromewebstore.google.com/detail/bcilpkkbokcopmabingnndookdogmbna