class Solution {
  func calculate(_ s: String) -> Int {
    /*
    var x = 1, y = 0
    for ch in s {
      switch ch {
      case "A": x = x * 2 + y
      case "B": y = y * 2 + x
      default: x = y
      }
    }
    return x + y
  }
  */
    return Int(pow(Double(2), Double(s.count)))
  }
}