class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {

        var carry = 0
        var nums = digits

        for i in (0..<digits.count).reversed() {
            let lastDigit = digits[i]

            if lastDigit < 9 {
                nums[i] = lastDigit + 1
                carry = 0
                return nums
            } else {
                carry = 1
                nums[i] = 0
            }
        }

        if carry == 1 {
            nums.insert(1, at: 0)
        }

        return nums
        
    }
}