class Solution(object):
    def maxProfit(self, prices):
        """
        :type prices: List[int]
        :rtype: int
        """
        profit =0
        lowest_price=prices[0]
        for i in range(1,len(prices)):
            if prices[i]>lowest_price:
                profit+=prices[i]-lowest_price
                # since we sold off the current share
                lowest_price=prices[i]
            else:
                lowest_price=prices[i]     

        return profit
