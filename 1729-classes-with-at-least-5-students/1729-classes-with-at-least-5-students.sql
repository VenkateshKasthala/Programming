# Write your MySQL query statement below
with cte as (Select class, count(student) from courses
group by class
having count(student)>=5)

select class from cte;

-- Synced seamlessly with LeetHub Pro
-- Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
-- Get it here: https://chromewebstore.google.com/detail/bcilpkkbokcopmabingnndookdogmbna