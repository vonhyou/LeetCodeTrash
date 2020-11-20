/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
  func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    var prs1 = l1, prs2 = l2, p = 0, node = ListNode(0)
    let res = node

    while prs1 != nil || prs2 != nil {
      node.next = ListNode(((prs1?.val ?? 0) + (prs2?.val ?? 0) + p) % 10)
      p = ((prs1?.val ?? 0) + (prs2?.val ?? 0) + p) / 10
      node = node.next!
      prs1 = prs1?.next
      prs2 = prs2?.next
    }
    if p > 0 {
      node.next = ListNode(p)
    }
    return res.next
  }
}