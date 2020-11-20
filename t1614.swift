class Solution {
  func maxDepth(_ s: String) -> Int {
    var max = 0, dep = 0
    for c in s {
      if c == "(" {
        dep += 1
        max = dep > max ? dep : max
      } else if c == ")" {
        dep -= 1
      }
    }
    return max
  }
}