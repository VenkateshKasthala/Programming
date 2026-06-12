# Write your MySQL query statement below


SELECT 
      E1.NAME
      FROM EMPLOYEE E1
      JOIN EMPLOYEE E2
      ON E1.ID = E2.MANAGERID
      GROUP BY E2.MANAGERID
      HAVING COUNT(E2.MANAGERID) >=5;

-- Synced seamlessly with LeetHub Pro
-- Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
-- Get it here: https://chromewebstore.google.com/detail/bcilpkkbokcopmabingnndookdogmbna