# Write your MySQL query statement below
SELECT E2.UNIQUE_ID AS UNIQUE_ID,
E1.NAME AS NAME
FROM EMPLOYEES E1
LEFT JOIN EMPLOYEEUNI E2
ON E1.ID=E2.ID;

-- Synced seamlessly with LeetHub Pro
-- Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
-- Get it here: https://chromewebstore.google.com/detail/bcilpkkbokcopmabingnndookdogmbna