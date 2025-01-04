class Solution: # Time : O(n), Space :O(1)
    def containsDuplicate(self, nums: List[int]) -> bool:
        lookup = set()
        for i in nums:
            if i in lookup:
                return True
            else:
                lookup.add(i)
        return False
        
