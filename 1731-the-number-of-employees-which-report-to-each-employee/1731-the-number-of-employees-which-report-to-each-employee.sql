# Write your MySQL query statement below


SELECT A.EMPLOYEE_ID, A.NAME, COUNT(A.EMPLOYEE_ID)AS REPORTS_COUNT, ROUND(AVG(B.AGE)) AS AVERAGE_AGE FROM EMPLOYEES A
JOIN EMPLOYEES B
ON A.EMPLOYEE_ID = B.REPORTS_TO
GROUP BY A.EMPLOYEE_ID
ORDER BY A.EMPLOYEE_ID


-- Synced seamlessly with LeetHub Pro
-- Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
-- Get it here: https://chromewebstore.google.com/detail/bcilpkkbokcopmabingnndookdogmbna