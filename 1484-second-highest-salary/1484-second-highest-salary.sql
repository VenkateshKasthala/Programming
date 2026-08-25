# Write your MySQL query statement below
SELECT MAX(SALARY) as SecondHighestSalary FROM EMPLOYEE 
WHERE SALARY< (select max(salary) from employee);

-- Synced seamlessly with LeetHub Pro
-- Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
-- Get it here: https://chromewebstore.google.com/detail/bcilpkkbokcopmabingnndookdogmbna