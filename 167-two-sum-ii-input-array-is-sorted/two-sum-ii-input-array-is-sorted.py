class Solution: # Time: O(n) Space: O(1)
    def twoSum(self, numbers: List[int], target: int) -> List[int]:
        l = 0
        r = len(numbers)-1

        while l < r:
            currsum = numbers[l] + numbers[r] 
            if currsum == target:
                return[l+1,r+1]
            elif currsum < target:
                l = l + 1
            else:
                r = r - 1
       
        