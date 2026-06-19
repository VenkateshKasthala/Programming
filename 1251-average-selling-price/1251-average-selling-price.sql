# Write your MySQL query statement below


SELECT P.PRODUCT_ID, IFNULL(ROUND(SUM(P.PRICE*U.UNITS)/COALESCE(SUM(U.UNITS), 1), 2), 0) AS AVERAGE_PRICE
FROM PRICES P
LEFT JOIN UNITSSOLD U
  ON P.PRODUCT_ID = U.PRODUCT_ID 
  AND U.PURCHASE_DATE BETWEEN P.START_DATE AND P.END_DATE
  GROUP BY P.PRODUCT_ID;


-- Synced seamlessly with LeetHub Pro
-- Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
-- Get it here: https://chromewebstore.google.com/detail/bcilpkkbokcopmabingnndookdogmbna