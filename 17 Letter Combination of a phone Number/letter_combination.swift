func letterCombinations(_ digits: String) -> [String] {
     let board = ["2": ["a", "b", "c"], "3": ["d", "e", "f"], "4": ["g", "h", "i"], "5": ["j", "k", "l"], "6": ["m", "n", "o"], "7": ["p", "q", "s"], "8": ["t", "u", "v"], "9": ["w", "x", "y", "z"]]
    var result = [String]()
    combination(charArray: Array(digits), board: board, level: 0, result: &result, current: "")
    return result
}

private func combination(charArray: [Character], board: [String: [String]], level: Int, result: inout [String], current: String) {
    if level == charArray.count {
        result.append(current)
        return
    }
    
    let num = charArray[level]
    for ch in dial[String(num)]! {
        combination(charArray: charArray, dial: dial, level: level + 1, result: &result, current: current + ch)
    }
}
