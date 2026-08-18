# Write your MySQL query statement below


WITH CTE AS (
    SELECT PRODUCT_ID, MIN(`YEAR`) AS FIRST_YEAR
    FROM SALES
    GROUP BY PRODUCT_ID
)
SELECT S.PRODUCT_ID, C.FIRST_YEAR, S.QUANTITY, S.PRICE
FROM SALES S
JOIN CTE C
    ON S.PRODUCT_ID = C.PRODUCT_ID
   AND S.`YEAR` = C.FIRST_YEAR;


-- Synced seamlessly with LeetHub Pro
-- Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
-- Get it here: https://chromewebstore.google.com/detail/bcilpkkbokcopmabingnndookdogmbna