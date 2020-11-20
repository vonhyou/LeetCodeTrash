// 44ms
class Solution {
  func findNumbers(_ nums: [Int]) -> Int {
    nums.count - nums.reduce(0, { $0 + ("\($1)".count % 2) })
  }
}

// 40ms
class Solution {
  func findNumbers(_ nums: [Int]) -> Int {
    var res = 0
    for n in nums {
      var len = String(n).count
      res += len & 1 == 1 ? 0 : 1
    }
    return res
  }
}