class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        guard !nums.isEmpty else { return 0 }

        let n = nums.count
        var majElement = Int.min
        var count = 0

        for num in nums {
            if count <= 0 {
                majElement = num
                count = 1
            } else if majElement == num {
                count += 1
            } else {
                count -= 1
            }
        }

        return majElement

       /* var dict = [Int: Int]()

        for num in nums {
            dict[num, default: 0] += 1
        }

        for (key, value) in dict {
            if value > n/2 {
                return key
            }
        }

        return 0 */
        
    }
}