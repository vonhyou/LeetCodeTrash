class Solution {
  func maxDepth(_ root: TreeNode?) -> Int {
    root == nil ? 0 : max(maxDepth(root?.left), maxDepth(root?.right)) + 1
  }
}