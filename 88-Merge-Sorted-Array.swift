class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var result = Array(repeating: 0, count: nums1.count)
        var p1 = 0
        var p2 = 0
        var idx = 0

        while(p1 < m && p2 < n) {
            if nums1[p1] < nums2[p2] {
                result[idx] = nums1[p1]
                p1 += 1
            } else {
                result[idx] = nums2[p2]
                p2 += 1
            }

            idx += 1
        }

        while(p1 < m) {
            result[idx] = nums1[p1]
            p1 += 1
            idx += 1
        }

        while(p2 < n) {
            result[idx] = nums2[p2]
            p2 += 1
            idx += 1
        }

        nums1 = result
    }
}