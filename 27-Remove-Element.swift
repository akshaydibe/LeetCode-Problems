class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        guard !nums.isEmpty else { return 0 }
        var idx = 0

        for num in nums where num != val {
            nums[idx] = num
            idx += 1
        }

        return idx
    }
}