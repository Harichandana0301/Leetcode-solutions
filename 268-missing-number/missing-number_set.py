class Solution:
    def missingNumber(self, nums: List[int]) -> int:
        number_set = set(nums)
        for num in range(len(nums)+1):
            if num not in number_set:
                return num
           
        
