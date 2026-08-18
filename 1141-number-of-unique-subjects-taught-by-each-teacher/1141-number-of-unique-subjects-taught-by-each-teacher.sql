# Write your MySQL query statement below
SELECT TEACHER_ID, COUNT(distinct SUBJECT_ID) as cnt
FROM TEACHER
GROUP BY TEACHER_ID

-- Synced seamlessly with LeetHub Pro
-- Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
-- Get it here: https://chromewebstore.google.com/detail/bcilpkkbokcopmabingnndookdogmbna