class Solution {
    func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
        guard !nums.isEmpty else { return false }
        var dict = [Int: Int]()

        for i in 0..<nums.count {
            if let idx = dict[nums[i]], i - idx <= k {
                return true
            }

            dict[nums[i]] = i
        }

        return false
    }
}