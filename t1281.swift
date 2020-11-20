class Solution {
  func subtractProductAndSum(_ n: Int) -> Int {
    // 1012 -> [1, 0, 1, 2]
    var arr = String(n).compactMap{ $0.wholeNumberValue }
    return arr.reduce(1, { $0 * $1 }) - arr.reduce(0, { $0 + $1 })
  }
}