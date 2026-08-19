# Write your MySQL query statement below

SELECT DIstinct A.NUM  as ConsecutiveNums
FROM LOGS A
JOIN LOGS B
JOIN LOGS C

ON  A.ID = B.ID-1
AND A.ID= C.ID-2
AND  A.NUM = B.NUM
  AND B.NUM = C.NUM;
 

-- Synced seamlessly with LeetHub Pro
-- Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
-- Get it here: https://chromewebstore.google.com/detail/bcilpkkbokcopmabingnndookdogmbna