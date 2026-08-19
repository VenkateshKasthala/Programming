
    WITH CNT_OF_PRODUCTS AS (
    SELECT CUSTOMER_ID, COUNT(DISTINCT PRODUCT_KEY) AS C
    FROM CUSTOMER
    GROUP BY CUSTOMER_ID
),
CNT_OF_P AS (
    SELECT COUNT(DISTINCT PRODUCT_KEY) AS CNT
    FROM PRODUCT
)
SELECT CUSTOMER_ID
FROM CNT_OF_PRODUCTS C
JOIN CNT_OF_P P
    ON C.C = P.CNT;






-- Synced seamlessly with LeetHub Pro
-- Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
-- Get it here: https://chromewebstore.google.com/detail/bcilpkkbokcopmabingnndookdogmbna