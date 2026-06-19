# Write your MySQL query statement below
SELECT 
    * FROM CINEMA
    WHERE ID%2=1 AND DESCRIPTION!='BORING'
    ORDER BY RATING DESC;

-- Synced seamlessly with LeetHub Pro
-- Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
-- Get it here: https://chromewebstore.google.com/detail/bcilpkkbokcopmabingnndookdogmbna