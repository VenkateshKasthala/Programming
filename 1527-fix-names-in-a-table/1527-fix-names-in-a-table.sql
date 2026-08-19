# Write your MySQL query statement below
SELECT USER_ID, CONCAT(UPPER(LEFT(NAME,1)), LOWER(Substring(name,2))) as name
from users
order by user_id;

-- Synced seamlessly with LeetHub Pro
-- Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
-- Get it here: https://chromewebstore.google.com/detail/bcilpkkbokcopmabingnndookdogmbna