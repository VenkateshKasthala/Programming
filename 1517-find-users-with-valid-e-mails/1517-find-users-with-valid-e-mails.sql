# Write your MySQL query statement below

# Time Complexity: O(N) where N is the number of users.
# Space Complexity: O(1).
# Coaching: Your current approach uses LIKE with a string that looks like a Regular Expression, but LIKE only supports '%' and '_' as wildcards. 
# To validate emails with specific character sets (a-z, 0-9, _, ., -), you must use the REGEXP operator in MySQL.
# Hint 1: The email must start with a letter. Use ^[a-zA-Z].
# Hint 2: The middle can contain letters, digits, underscores, dots, or dashes. Use [a-zA-Z0-9_.-]*.
# Hint 3: It must end exactly with '@leetcode.com'. Use @leetcode\.com$.
# Hint 4: Be careful with the dot (.) in the domain; it needs to be escaped as '\.' to be treated as a literal character.

# The current query is incorrect because 'LIKE' does not support character classes like [a-z].
# To fix this, replace 'LIKE' with 'REGEXP' and use the pattern: '^[a-zA-Z][a-zA-Z0-9_.-]*@leetcode\\.com$'


# Correct! Your use of REGEXP with the anchor ^ for the start and $ for the end ensures the email matches the pattern exactly.
# Time Complexity: O(N) - Each row is scanned once.
# Space Complexity: O(1) - No extra space used relative to input size.
# This is the optimal approach for this problem. You can now click the Git icon in the toolbar to push this to your GitHub repo!


SELECT *
FROM Users
WHERE REGEXP_LIKE(mail, '^[a-zA-Z][a-zA-Z0-9_.-]*@leetcode[.]com$', 'c');

-- Synced seamlessly with LeetHub Pro
-- Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
-- Get it here: https://chromewebstore.google.com/detail/bcilpkkbokcopmabingnndookdogmbna