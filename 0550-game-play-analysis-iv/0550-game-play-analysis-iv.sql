-- # Write your MySQL query statement below
-- WITH CTE AS 
-- (
--     SELECT TEAM, COUNT(Distinct A.PLAYER_ID) AS cons 
--     FROM ACTIVITY A
--     JOIN ACTIVITY B ON
--         A.PLAYER_ID = B.PLAYER_ID
--         AND A.EVENT_DATE = B.EVENT_DATE+1
-- )
-- SELECT round(CTE.cons / COUNT(DISTINCT activity.player_id) , 2) as fraction
-- FROM activity
-- cross join cte;

-- WITH login AS (
--     SELECT 
--         player_id,
--         DATEDIFF(event_date, LAG(event_date) OVER (PARTITION BY player_id ORDER BY event_date)) AS diff
--     FROM activity
-- )
-- SELECT 
--     ROUND(
--         COUNT(DISTINCT CASE WHEN diff = 1 THEN player_id END) * 1.0 
--         / COUNT(DISTINCT player_id), 
--         2
--     ) AS fraction
-- FROM login ;

WITH first_logins AS (
    SELECT 
        player_id, 
        MIN(event_date) AS first_date
    FROM activity
    GROUP BY player_id
)
SELECT 
    ROUND(COUNT(a.player_id) * 1.0 / COUNT(f.player_id), 2) AS fraction
FROM first_logins f
LEFT JOIN activity a
    ON f.player_id = a.player_id 
    AND a.event_date = DATE_ADD(f.first_date, INTERVAL 1 DAY);

-- Synced seamlessly with LeetHub Pro
-- Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
-- Get it here: https://chromewebstore.google.com/detail/bcilpkkbokcopmabingnndookdogmbna