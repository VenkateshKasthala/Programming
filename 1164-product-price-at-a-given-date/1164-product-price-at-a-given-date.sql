# Write your MySQL query statement below
# Time Complexity: O(N log N) due to grouping and joining
# Space Complexity: O(N) to store the CTE
# Coach Note: Your logic is almost correct, but there are a few syntax and logical errors.
# 1. 'new_price' as price -> You put the column name in quotes, making it a string literal. Remove quotes.
# 2. The second UNION part: 'WHERE CHANGE_DATE<='2019-08-16' GROUP BY PRODUCT_ID HAVING COUNT(CHANGE_DATE)=0' 
#    will never return rows because the WHERE clause filters for dates that EXIST, but HAVING COUNT=0 
#    looks for dates that DON'T exist.
# 3. To find products with no price changes before the date, you need to find product_ids that are NOT in the CTE.

WITH CTE AS (
    SELECT product_id,
           MAX(change_date) AS latest_date
    FROM Products
    WHERE change_date <= '2019-08-16'
    GROUP BY product_id
)

select  P.product_id, p.new_price as price
from products p
join cte c 
on p.product_id=c.product_id
and c.latest_date=p.change_date

UNION 
SELECT DISTINCT product_id, 10 AS price 
FROM Products 
WHERE product_id NOT IN (SELECT product_id FROM CTE);

-- Synced seamlessly with LeetHub Pro
-- Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
-- Get it here: https://chromewebstore.google.com/detail/bcilpkkbokcopmabingnndookdogmbna