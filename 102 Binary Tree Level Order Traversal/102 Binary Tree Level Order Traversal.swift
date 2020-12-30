func levelOrder(_ root: TreeNode?) -> [[Int]] {
    guard let r = root else { return [] }
    var queue = [TreeNode]()
    queue.append(r)
    var result = [[Int]]()
    while queue.count > 0 {
        var len = queue.count
        var cur = [Int]()
        while len > 0 {
            let node = queue.removeFirst()
            cur.append(node.val)
            if let left = node.left {
                queue.append(left)
            }
            if let right = node.right {
                queue.append(right)
            }
            len -= 1
        }
        result.append(cur)
    }
    return result
}
