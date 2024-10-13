class Solution {
    func isIsomorphic(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else { return false }

        let s = Array(s)
        let t = Array(t)
        var dict = [Character: Character]()

        for (index, char) in t.enumerated() {
            if dict[char] ==  nil {
                dict[char] = s[index]
            } else if dict[char] != s[index] {
                return false
            }
        }

        return dict.keys.count == Set(dict.values).count
    }
}