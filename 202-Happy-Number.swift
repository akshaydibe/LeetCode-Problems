class Solution {
    func isHappy(_ n: Int) -> Bool {
        guard n > 0 else { return false }

        /*var slow = n
        var fast = n

        repeat {
            slow = square(slow)
            fast = square(fast)
            fast = square(fast)
        } while slow != fast

        return fast == 1 */

        var set = Set<Int>()

        var num = n

        while num != 1 {

            if set.contains(num) {
                return false
            }

            set.insert(num) 

            num = square(num) 
        }

        return true
        
    }

    func square(_ num: Int) -> Int {
        
        var num = num
        var sum = 0

        while num > 0 {
            let n = num % 10
            sum += n * n
            num = num / 10
        }

        return sum
    }
}