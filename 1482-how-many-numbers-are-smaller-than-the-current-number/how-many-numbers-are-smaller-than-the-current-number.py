class Solution:
    def smallerNumbersThanCurrent(self, nums: List[int]) -> List[int]:
        temp = sorted(nums)  
        d = {}
        res = []

       
        for i, num in enumerate(temp):
            if num not in d:
                d[num] = i

      
        for i in nums:
            res.append(d[i])

        return res
