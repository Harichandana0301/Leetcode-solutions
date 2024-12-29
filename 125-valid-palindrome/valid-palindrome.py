class Solution:
    def isPalindrome(self, s: str) -> bool:
        filtered_s =""
        for i in s:
            if i.isalnum():
                filtered_s = filtered_s + i.lower()
        return filtered_s == filtered_s[::-1]
           

            
    
        