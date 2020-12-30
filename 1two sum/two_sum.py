from typing import List

class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        if len(nums) <= 1:
            return False
        dict = {}
        for i in range(len(nums)):
            remain = target - nums[i]
            if remain in dict:
                return [dict[remain], i]
            else:
                dict[nums[i]] = i


solution = Solution()
result = solution.twoSum([1,2,3,5,6],8)
print(result) 