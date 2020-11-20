class Solution {
  func xorOperation(_ n: Int, _ start: Int) -> Int {
    var res = start, s = start + 2
    for i in 1..<n {
      res = res ^ s
      s += 2
    }
    return res
  }
}
