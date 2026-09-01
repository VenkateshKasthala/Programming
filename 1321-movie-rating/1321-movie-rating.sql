# Write your MySQL query statement below



 (
    SELECT u.name AS results
    FROM Users u
    JOIN MovieRating r ON u.user_id = r.user_id
    GROUP BY u.user_id
    ORDER BY COUNT(r.movie_id) DESC, u.name ASC
    LIMIT 1
)
UNION ALL
(
    SELECT m.title AS results
    FROM Movies m
    JOIN MovieRating r ON m.movie_id = r.movie_id
    WHERE r.created_at >= '2020-02-01' AND r.created_at < '2020-03-01'
    GROUP BY m.movie_id
    ORDER BY AVG(r.rating) DESC, m.title ASC
    LIMIT 1
);

-- Synced seamlessly with LeetHub Pro
-- Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
-- Get it here: https://chromewebstore.google.com/detail/bcilpkkbokcopmabingnndookdogmbna