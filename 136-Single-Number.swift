class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        guard !nums.isEmpty else { return 0 }
        var result = 0

        for num in nums {
            result ^= num
        }

        return result
    }
}