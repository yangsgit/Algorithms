func swapPairs(_ head: ListNode?) -> ListNode? {
    return reverse(head)
}

private func reverse(_ head: ListNode?) -> ListNode? {
    if head == nil || head?.next == nil { return head }
    
    let last = reverse(head?.next?.next)
    let newHead = head?.next
    newHead?.next = head
    head?.next = last
    
    return newHead
}

