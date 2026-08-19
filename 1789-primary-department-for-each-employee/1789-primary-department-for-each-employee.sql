-- SELECT EMPLOYEE_ID, DEPARTMENT_ID FROM EMPLOYEE
-- WHERE PRIMARY_FLAG ='y'

-- UNION SELECT EMPLOYEE_ID, DEPARTMENT_ID FROM EMPLOYEE
-- GROUP BY EMPLOYEE_ID
-- HAVING COUNT(DEPARTMENT_ID)=1

SELECT EMPLOYEE_ID,
       CASE
           WHEN COUNT(DEPARTMENT_ID) = 1 THEN DEPARTMENT_ID
           ELSE MAX(CASE WHEN PRIMARY_FLAG = 'Y' THEN DEPARTMENT_ID END)
       END AS DEPARTMENT_ID
FROM EMPLOYEE
GROUP BY EMPLOYEE_ID;

-- Synced seamlessly with LeetHub Pro
-- Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
-- Get it here: https://chromewebstore.google.com/detail/bcilpkkbokcopmabingnndookdogmbna