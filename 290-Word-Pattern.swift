class Solution {
    func wordPattern(_ pattern: String, _ s: String) -> Bool {
        let pattern = Array(pattern)
        let s = s.split(separator: " ")

        guard pattern.count == s.count else { return false }

        var dict = [String.SubSequence: Character]()
        
        for (index, word) in s.enumerated() {
            if dict[word] == nil {
                dict[word] = pattern[index]
            } else if dict[word] != pattern[index] {
                return false
            }
        }
        return dict.keys.count == Set(dict.values).count
    }
}