# Write your MySQL query statement below
-- WITH DEDUP AS 
-- (SELECT ID, EMAIL, ROW_NUMBER() OVER(PARTITION BY EMAIL ORDER BY ID) AS R  
-- FROM PERSON )

-- DELETE * FROM DEDUP WHERE R>1;

DELETE FROM PERSON
WHERE ID NOT IN (
    SELECT ID
    FROM (
        SELECT ID,
               ROW_NUMBER() OVER (
                   PARTITION BY EMAIL
                   ORDER BY ID
               ) AS R
        FROM PERSON
    ) DEDUP
    WHERE R = 1
);

-- Synced seamlessly with LeetHub Pro
-- Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
-- Get it here: https://chromewebstore.google.com/detail/bcilpkkbokcopmabingnndookdogmbna