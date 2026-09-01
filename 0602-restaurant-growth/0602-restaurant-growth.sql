# Write your MySQL query statement below


WITH daily_spending AS (
    SELECT 
        visited_on, 
        SUM(amount) AS amount
    FROM customer
    GROUP BY visited_on
),
running_metrics AS (
    SELECT 
        visited_on,
        SUM(amount) OVER (
            ORDER BY visited_on 
            ROWS BETWEEN 6 PRECEDING AND CURRENT ROW
        ) AS amount,
        ROUND(AVG(amount) OVER (
            ORDER BY visited_on 
            ROWS BETWEEN 6 PRECEDING AND CURRENT ROW
        ), 2) AS average_amount,
        LAG(visited_on, 6) OVER (ORDER BY visited_on) AS lag_6
    FROM daily_spending
)
SELECT 
    visited_on, 
    amount, 
    average_amount
FROM running_metrics
WHERE lag_6 IS NOT NULL
ORDER BY visited_on;

-- Synced seamlessly with LeetHub Pro
-- Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
-- Get it here: https://chromewebstore.google.com/detail/bcilpkkbokcopmabingnndookdogmbna