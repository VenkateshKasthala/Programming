# Write your MySQL query statement below
SELECT NAME, BONUS
FROM EMPLOYEE 
LEFT JOIN BONUS 
ON EMPLOYEE.EMPID = BONUS.EMPID
WHERE BONUS<1000 OR BONUS IS NULL;

-- Synced seamlessly with LeetHub Pro
-- Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
-- Get it here: https://chromewebstore.google.com/detail/bcilpkkbokcopmabingnndookdogmbna