class Solution: # Time: O(n) Space: O(1)
    def maxArea(self, height: List[int]) -> int:
        l=0
        r = len(height)-1
        result = 0
        while l < r:
            currarea = (r-l) * min(height[l],height[r])
            result = max(result,currarea)
            if height[l] < height[r]:
                l=l+1
            else:
                r=r-1

        return result
            

        