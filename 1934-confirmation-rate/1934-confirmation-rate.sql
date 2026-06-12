# Write your MySQL query statement below
SELECT S.USER_ID,
    ROUND(COUNT(CASE WHEN C.ACTION = 'CONFIRMED' THEN 1 END) /COUNT(S.USER_ID), 2) AS CONFIRMATION_RATE
    FROM SIGNUPS S
    LEFT JOIN CONFIRMATIONS C
    ON S.USER_ID = C.USER_ID
    GROUP BY USER_ID;

-- Synced seamlessly with LeetHub Pro
-- Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
-- Get it here: https://chromewebstore.google.com/detail/bcilpkkbokcopmabingnndookdogmbna