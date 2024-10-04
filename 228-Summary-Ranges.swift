class Solution {
    func summaryRanges(_ nums: [Int]) -> [String] {
        guard !nums.isEmpty else { return [] }
        var ans = [String]()
        var no = nums[0]
        let set = Set(nums)
        var count = 0

        for i in 1..<nums.count {
            if set.contains(nums[i] - 1) {
                count += 1
                continue
            } else {
                if count > 0 {
                    ans.append("\(no)->\(nums[i-1])")
                } else {
                    ans.append("\(no)")
                }
                no = nums[i]
                count = 0
            }
        }

        if count > 0 {
            ans.append("\(no)->\(nums.last!)")
        } else {
            ans.append("\(no)")
        }
        

        return ans
        
    }
}