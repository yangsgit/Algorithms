func generateParenthesis(_ n: Int) -> [String] {
    var result = [String]()
    generate(left: n, right: n, result: &result, cur: "")
    return result
}

private func generate(left: Int, right: Int, result: inout [String], cur: String) {
    
    if right == 0 {
        result.append(cur)
        return
    }
    
    if left > 0 {
        let newCur = cur + "("
        generate(left: left - 1, right: right, result: &result, cur: newCur)
    }
    
    if right > left {
        let newCur = cur + ")"
        generate(left: left, right: right - 1, result: &result, cur: newCur)
    }
}
