    func lengthOfLongestSubstring(_ s: String) -> Int {
        var usedChar = [Character: Int]()
        var start = 0
        var maxlength = 0
        for i in 0..<s.count {
            let index = s.index(s.startIndex, offsetBy: i)
            let curCharacter = s[index]
            if let pos = usedChar[curCharacter], pos <= i {
                start = pos + 1
            }
            maxlength = max(maxlength, i - start + 1)
            usedChar[curCharacter] = i
        }
        return maxlength
    }


