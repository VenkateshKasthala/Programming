class Solution(object):
    def removeDuplicates(self, nums):
        """
        :type nums: List[int]
        :rtype: int
        """
        k=2
        for i in range(2,len(nums)):
            if nums[i]!=nums[k-2]:
            # Initially I hit the wall by using i-2 
            ## Look closely at Step 4 (where i=4) for case 1.The array now looks like this-  [1, 1, 2, 2, 2, 3]
                nums[k]=nums[i]
                k=k+1
        return k