class Solution(object):
    def canJump(self, nums):
        """
        :type nums: List[int]
        :rtype: bool
        """
        farthest = 0
        for i in range(len(nums)):
            # can't reach this index
            if i > farthest:       
                return False
             # update farthest reachable
            farthest = max(farthest, i + nums[i]) 
        return True