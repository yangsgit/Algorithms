
func subsets(_ nums: [Int]) -> [[Int]] {
    if nums.count <= 1 { return [nums] }
    
    var arr = [Int]()
    var result = [[Int]]()
    combine(nums: nums, index: 0, arr: &arr, result: &result)
    return result
}

private func combine(nums: [Int], index: Int, arr: inout [Int], result: inout [[Int]])  {
    if index == nums.count {
        result += [arr]
        return
    }
    
    arr.append(nums[index])
    combine(nums: nums, index: index + 1, arr: &arr, result: &result)
    arr.removeLast()
    combine(nums: nums, index: index + 1, arr: &arr, result: &result)
    
}
