class Solution(object):
    def isPalindrome(self, s):
        """
        :type s: str
        :rtype: bool
        """
        s1 = ''.join([char.lower() for char in s if char.isalnum()])
        i = 0 
        n = len(s1)-1
        if n<=0:
            return True
        while i<=(len(s1)//2):
            if s1[i]!=s1[n-i]:
                return False
            else:
                i=i+1
        return True 
            