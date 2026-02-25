class Solution(object):
    def rotate(self, nums, k):
        """
        :type nums: List[int]
        :type k: int
        :rtype: None Do not return anything, modify nums in-place instead.
        """
        # using additional memory
        # l=[]
        # for i in range(len(nums)-k, len(nums)):
        #     l.append(nums[i])
        
        # for i in range(len(nums)-k):
        #     l.append(nums[i])


        ## Using Hint 3

        ## [1,2,3,4,5,6,7] k =3
        # Output should like  [5,6,7,1,2,3,4]
        # Reverse- [7,6,5,4,3,2,1]
        # [7,6,5] [4,3,2,1]
        # reversing it again will get the output
        
        k =k%len(nums)
        
        # Step 1: Reverse whole array
        l, r = 0, len(nums) - 1
        while l < r:
            nums[l], nums[r] = nums[r], nums[l]
            l += 1
            r -= 1

        # Step 2: Reverse first k elements
        l, r = 0, k - 1
        while l < r:
            nums[l], nums[r] = nums[r], nums[l]
            l += 1
            r -= 1

        # Step 3: Reverse remaining elements
        l, r = k, len(nums) - 1
        while l < r:
            nums[l], nums[r] = nums[r], nums[l]
            l += 1
            r -= 1
            