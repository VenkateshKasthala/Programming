# Write your MySQL query statement below
SELECT PATIENT_ID, PATIENT_NAME, CONDITIONS 
FROM PATIENTS
WHERE CONDITIONS LIKE '% DIAB1%' or CONDITIONS LIKE 'DIAB1%';

-- Synced seamlessly with LeetHub Pro
-- Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
-- Get it here: https://chromewebstore.google.com/detail/bcilpkkbokcopmabingnndookdogmbna