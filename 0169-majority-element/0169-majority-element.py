class Solution:
    def majorityElement(self, nums: List[int]) -> int:
        current_leader = None
        vote_balance = 0

        for number in nums:
            if vote_balance == 0:
                current_leader = number

            if number == current_leader:
                vote_balance += 1
            else:
                vote_balance -= 1

        return current_leader

# Synced seamlessly with LeetHub Pro
# Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
# Get it here: https://chromewebstore.google.com/detail/bcilpkkbokcopmabingnndookdogmbna