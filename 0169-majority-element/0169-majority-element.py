class Solution(object):
    def majorityElement(self, nums):
        """
        :type nums: List[int]
        :rtype: int
        """
        # First Attempt
        c ={}
        for i in nums:
            if i in c:
                c[i]=c[i]+1
            else:
                c[i]=1
        return max(c, key=c.get)


        ## Optimal Solution


        for num in nums:
            # If count reaches 0, we start fresh with a new candidate
            if count == 0:
                candidate = num
            
            # Increment if same as candidate, decrement if different
            if num == candidate:
                count += 1
            else:
                count -= 1
        
        return candidate