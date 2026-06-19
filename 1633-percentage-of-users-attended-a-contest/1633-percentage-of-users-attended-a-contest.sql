# Write your MySQL query statement below
SELECT 
    R.CONTEST_ID, 
    ROUND(COUNT(R.USER_ID) / (SELECT COUNT(*) FROM USERS) * 100, 2) AS PERCENTAGE 
FROM REGISTER R 
GROUP BY R.CONTEST_ID
ORDER BY PERCENTAGE DESC, R.CONTEST_ID ASC;



-- Synced seamlessly with LeetHub Pro
-- Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
-- Get it here: https://chromewebstore.google.com/detail/bcilpkkbokcopmabingnndookdogmbna