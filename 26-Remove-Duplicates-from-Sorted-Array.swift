class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        guard !nums.isEmpty else { return 0 }

        let n = nums.count
        var left = 0
        var right = 0
        var k = 1

        while(right < n) {
            if nums[right] == nums[left] {
                right += 1
            } else {
                let temp = nums[right]
                nums[right] = nums[left + 1]
                nums[left + 1] = temp
                left += 1
                right += 1
                k += 1
            }
        }

        return k
        
    }
}