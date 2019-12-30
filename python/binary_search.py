from typing import List

def search(nums: List[int], target: int) -> int:
		left=0
		right=len(nums)
		while left<=right:
			index=(left+right)//2
			if nums[index]==target:
				return index
			elif target<nums[index]:
				right=index
			elif target>nums[index]:
				left=index
			else:
				return -1


result = search([1,2,3,4], 3) 
print(result)