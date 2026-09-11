class Solution:
    def maxProfit(self, prices: List[int]) -> int:
        lowest=prices[0]
        profit=0

        for price in prices:
            if price>lowest:
                profit=profit+(price-lowest)
            lowest=price
        return profit


# Synced seamlessly with LeetHub Pro
# Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
# Get it here: https://chromewebstore.google.com/detail/bcilpkkbokcopmabingnndookdogmbna