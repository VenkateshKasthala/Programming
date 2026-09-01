# Write your MySQL query statement bel
# COACHING: Your logic is almost correct, but there is a critical issue with your date literals.
# In SQL, dates must be wrapped in single quotes (e.g., '2020-02-01'). 
# Without quotes, MySQL treats 2020-02-01 as a mathematical subtraction (2020 minus 2 minus 1), which equals 2017.
# Also, February 2020 had 29 days, not 30. Using '2020-02-29' or the BETWEEN operator is safer.

SELECT P.PRODUCT_NAME, SUM(O.UNIT) AS UNIT  FROM PRODUCTS P 
JOIN ORDERS O ON P.PRODUCT_ID = O.PRODUCT_ID 
WHERE O.ORDER_DATE >= '2020-02-01' AND O.ORDER_DATE <= '2020-02-29'
GROUP BY P.PRODUCT_ID
HAVING SUM(O.UNIT) >= 100

# Complexity Analysis:
# Time Complexity: O(N * M) in worst case for the join, where N is products and M is orders.
# Space Complexity: O(K) where K is the number of unique products grouped.
# This is the optimal approach for this problem. Once you add the quotes to the dates, you are ready to submit!

-- Synced seamlessly with LeetHub Pro
-- Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
-- Get it here: https://chromewebstore.google.com/detail/bcilpkkbokcopmabingnndookdogmbna