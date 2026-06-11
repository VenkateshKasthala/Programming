

SELECT 
    W1.ID
FROM WEATHER W1
JOIN WEATHER W2
ON W1.RECORDDATE= DATE_ADD(W2.RECORDDATE, INTERVAL 1 DAY)
WHERE W1.TEMPERATURE> W2.TEMPERATURE;

-- WITH CTE AS 
-- ( SELECT ID, RECORDDATE, TEMPERATURE, LAG(TEMPERATURE) OVER (ORDER BY RECORDDATE) AS PREV_TEMP
-- FROM WEATHER)

-- SELECT ID FROM CTE WHERE TEMPERATURE > PREV_TEMP;

-- Synced seamlessly with LeetHub Pro
-- Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
-- Get it here: https://chromewebstore.google.com/detail/bcilpkkbokcopmabingnndookdogmbna