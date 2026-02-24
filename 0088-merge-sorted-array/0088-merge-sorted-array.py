class Solution(object):
    def merge(self, nums1, m, nums2, n):
        """
        :type nums1: List[int]
        :type m: int
        :type nums2: List[int]
        :type n: int
        :rtype: None Do not return anything, modify nums1 in-place instead.
        """
        # First Attempt
        j=0
        for i in range(m,len(nums1)):
            # Start looping from m - if there are elements in nums1, usually zero replace them. If nothing is present append
            if nums1[i]==0:
                nums1[i] = nums2[j]
                j=j+1
            else:
                nums1.append(nums2[j])
                j=j+1
        # we have to sort it now
        nums1.sort()


            
                
            