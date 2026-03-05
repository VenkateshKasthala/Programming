class Solution(object):
    def isSubsequence(self, s, t):
        """
        :type s: str
        :type t: str
        :rtype: bool
        """
        k =0 
        l=0
        for i in range(len(s)):
            for j in range(k,len(t)):
                if s[i]==t[j]:
                    k=j+1
                    l+=1
                    break
        if  l==len(s):
            return True
        else:
            return False

        
        