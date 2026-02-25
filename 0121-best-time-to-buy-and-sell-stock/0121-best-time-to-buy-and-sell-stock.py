class Solution(object):
    def maxProfit(self, prices):
        """
        :type prices: List[int]
        :rtype: int
        """
        ## Time Limit Exceeded

        # profit = 0
        # for i in range(len(prices)-1):
        #     for j in range(i+1, len(prices)):
        #         if prices[j]-prices[i]> profit:
        #             profit =prices[j]-prices[i]
        # return profit


        lowest_price=prices[0]
        profit =0
        for i in range(1,len(prices)):
            if prices[i]<lowest_price:
                  lowest_price= prices[i]
            
            if prices[i]-lowest_price>profit:
                  profit=prices[i]-lowest_price
        return profit