class Solution:
    def lengthOfLongestSubstring(self, s: str) -> int:
        l = 0
        long =0
        charSet = set()

        for r in range(len(s)):
            while s[r] in charSet:
                charSet.remove(s[l])
                l = l+1
            charSet.add(s[r])
            curr_long = (r-l)+1
            long = max(long,curr_long)
        return long


         