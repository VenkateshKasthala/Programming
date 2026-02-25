class Solution(object):
    def removeElement(self, nums, val):
        """
        :type nums: List[int]
        :type val: int
        :rtype: int
        """

        # Input: nums = [0,1,2,2,3,0,4,2], val = 2
        # Output: 5, nums = [0,1,4,0,3,_,_,_] 
        k = 0 
        
        for i in range(len(nums)):
            if nums[i] != val:
                nums[k] = nums[i]
                k += 1
                
        
        for i in range(k, len(nums)):
            nums[i] = '_'
            
        return k