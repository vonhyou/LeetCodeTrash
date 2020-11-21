/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */
class Solution {
  func getDecimalValue(_ head: ListNode?) -> Int {
    var res = 0, pt = head
    while pt != nil {
      res = (res << 1) + pt!.val
      pt = pt?.next
    }
    return res
  }
}