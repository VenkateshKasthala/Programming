# Write your MySQL query statement below
WITH CTE AS 
(
SELECT
     A1.MACHINE_ID, ROUND((A1.TIMESTAMP-A2.TIMESTAMP),3 )AS TIME_TAKEN
     FROM ACTIVITY A1
     JOIN ACTIVITY A2
     ON A1.MACHINE_ID=A2.MACHINE_ID
     AND A1.PROCESS_ID=A2.PROCESS_ID
     AND A1.ACTIVITY_TYPE!=A2.ACTIVITY_TYPE
     WHERE A1.ACTIVITY_TYPE='END'
)

SELECT 
    MACHINE_ID, ROUND(AVG(TIME_TAKEN),3) AS PROCESSING_TIME
    FROM CTE
    GROUP BY MACHINE_ID;


-- Synced seamlessly with LeetHub Pro
-- Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
-- Get it here: https://chromewebstore.google.com/detail/bcilpkkbokcopmabingnndookdogmbna