class Solution: # Time: O(N) Space: O(1)
    def removeDuplicates(self, nums: List[int]) -> int:
        i=0
        while i < len(nums)-1:
            if nums[i] == nums[i+1]:
                nums.pop(i+1)
            else:
                i = i+1
        return len(nums)
        
