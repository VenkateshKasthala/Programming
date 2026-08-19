# Write your MySQL query statement below
WITH CTE AS
(SELECT * , SUM(WEIGHT) OVER(ORDER BY TURN) AS TOTAL_WEIGHT
FROM QUEUE)

SELECT PERSON_NAME FROM CTE 
WHERE TOTAL_WEIGHT <=1000
ORDER BY TURN DESC 
LIMIT 1

-- Synced seamlessly with LeetHub Pro
-- Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
-- Get it here: https://chromewebstore.google.com/detail/bcilpkkbokcopmabingnndookdogmbna