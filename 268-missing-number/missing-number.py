class Solution:
    def missingNumber(self, nums: List[int]) -> int:
 
        for num in nums:
            return sum(range(len(nums)+1)) - sum(nums)
           
        