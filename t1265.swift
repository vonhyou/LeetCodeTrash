/**
 * Definition for ImmutableListNode.
 * public class ImmutableListNode {
 *     public func printValue() {}
 *     public func getNext() -> ImmutableListNode? {}
 * }
 */

class Solution {
  func printLinkedListInReverse(_ head: ImmutableListNode?) {
    if head != nil {
      printLinkedListInReverse(head?.getNext())
      head?.printValue()
    }
  }
}