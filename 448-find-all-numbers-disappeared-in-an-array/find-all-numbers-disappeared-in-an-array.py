class Solution:
    def findDisappearedNumbers(self, nums: List[int]) -> List[int]:
        set_nums = set(nums)

        res = []

        for num in range(1,len(nums)+1):
            if num not in set_nums:
                res.append(num)
        return res