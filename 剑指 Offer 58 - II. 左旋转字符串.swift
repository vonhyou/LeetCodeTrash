class Solution {
  func reverseLeftWords(_ s: String, _ n: Int) -> String {
    s.substring(from: n) + s.substring(to: n)
  }
}