-- Write your PostgreSQL query statement below
WITH requester_counts AS (
    SELECT requester_id AS id, COUNT(*) AS req_cnt
    FROM RequestAccepted
    GROUP BY requester_id
),
accepter_counts AS (
    SELECT accepter_id AS id, COUNT(*) AS acc_cnt
    FROM RequestAccepted
    GROUP BY accepter_id
)
SELECT 
    COALESCE(r.id, a.id) AS id,
    COALESCE(r.req_cnt, 0) + COALESCE(a.acc_cnt, 0) AS num
FROM requester_counts r
FULL OUTER JOIN accepter_counts a ON r.id = a.id
ORDER BY num DESC
LIMIT 1;

/*
Synced seamlessly with LeetHub Pro
Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
Get it here: https://chromewebstore.google.com/detail/bcilpkkbokcopmabingnndookdogmbna
*/