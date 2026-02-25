class Solution(object):
    def merge(self, nums1, m, nums2, n):
        """
        :type nums1: List[int]
        :type m: int
        :type nums2: List[int]
        :type n: int
        :rtype: None Do not return anything, modify nums1 in-place instead.
        """
        # # First Attempt- Well this is not the Optimal
        # j=0
        # for i in range(m,len(nums1)):
        #     # Start looping from m - if there are elements in nums1, usually zeroes (replace them). If nothing is present append
        #     if nums1[i]==0:
        #         nums1[i] = nums2[j]
        #         j=j+1
        # # we have to sort it now
        # nums1.sort()


# Optimal Solution
        
#Instead of starting from the beginning (which would require shifting elements), we compare the largest values of both arrays and place them at the very end of nums1.

        i = m-1
        j = n-1
        k = m+n-1

        while i>=0 and j>=0:
            if nums1[i]>nums2[j]:
                nums1[k]=nums1[i]
                i-=1
            else:
                nums1[k]=nums2[j]
                j=j-1
            
            k=k-1

        # Edge case
        # if elements in nums1 are leftover(i>0) - They are sorted anyway!

        while j>=0:
            nums1[k]=nums2[j]
            j=j-1
            k=k-1 
        







            
                
            