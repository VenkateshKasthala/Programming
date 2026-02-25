class Solution(object):
    def removeDuplicates(self, nums):
        """
        :type nums: List[int]
        :rtype: int
        """
        
        # Edge case: If the array is empty, return 0
        if not nums:
            return 0
        
        # Start k at 1 because the first element is always unique
        k = 1
        
        # Start i at 1 to compare it with the element at i - 1
        for i in range(1, len(nums)):
            if nums[i] != nums[i - 1]:
                nums[k] = nums[i]
                k += 1
        
        return k