class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        guard !nums.isEmpty else { return 0}

        var set = Set<Int>()
        var count = 0

        set = Set(nums)

        for n in set {

            if(!set.contains(n - 1)) {
                var num = n
                var freq = 0

                while(set.contains(num)) {
                    freq += 1
                    num += 1
                } 

                count = max(freq, count)
            }
        }

        return count
    }
}