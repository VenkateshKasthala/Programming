class Solution(object):
    def merge(self, nums1, m, nums2, n):
        
        p1 = m - 1          # Last valid element in nums1
        p2 = n - 1          # Last element in nums2
        p_merge = m + n - 1 # Last overall slot in nums1

        while p1 >= 0 and p2 >= 0:
            if nums1[p1] > nums2[p2]:
                nums1[p_merge] = nums1[p1]
                p1 -= 1
            else:
                nums1[p_merge] = nums2[p2]
                p2 -= 1
            p_merge -= 1
            
        while p2 >= 0:
            nums1[p_merge] = nums2[p2]
            p2 -= 1
            p_merge -= 1

# Synced seamlessly with LeetHub Pro
# Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
# Get it here: https://chromewebstore.google.com/detail/bcilpkkbokcopmabingnndookdogmbna