# Write your MySQL query statement below

# Coaching Note:
# Your current query uses LISTAGG, which is an Oracle function. 
# Since you are using MySQL, you should use GROUP_CONCAT().
# Also, the problem requires unique products per date, so you need DISTINCT inside the aggregation.

# Current Complexity:
# Time: O(N log N) due to grouping and sorting.
# Space: O(N) to store the grouped results.
# This is the optimal complexity for this problem.

SELECT 
    SELL_DATE, 
    COUNT(DISTINCT PRODUCT) AS NUM_SOLD, 
    GROUP_CONCAT(DISTINCT PRODUCT ORDER BY PRODUCT SEPARATOR ',') AS PRODUCTS
FROM ACTIVITIES
GROUP BY SELL_DATE;

-- Synced seamlessly with LeetHub Pro
-- Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
-- Get it here: https://chromewebstore.google.com/detail/bcilpkkbokcopmabingnndookdogmbna