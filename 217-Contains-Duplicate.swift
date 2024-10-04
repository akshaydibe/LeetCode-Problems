class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        guard !nums.isEmpty else { return false }
        var dict = [Int: Int]()
        let nums = nums.sorted(by: <)

        var count = 0
        var item = nums[0]

        for num in nums {
            if num == item {
                count += 1
            } else {
                item = num
                count = 1
            }

            if count >= 2 {
                return true
            }
        }

        /*for num in nums {
            dict[num, default: 0] += 1
        }

        for (key, value) in dict {
            if value >= 2 {
                return true
            }
        } */
        
        return false
    }
}