    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        var array = nums1 + nums2
        array.sort(by: <)
        if array.count % 2 == 0 {
            return Double((array[array.count / 2] + array[array.count / 2 - 1])) / 2
        } else {
            return Double(array[array.count / 2])
        }
    }