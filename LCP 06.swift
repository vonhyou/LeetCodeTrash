// USAGE of reduce
class Solution {
  func minCount(_ coins: [Int]) -> Int {
    coins.reduce(0, { $0 + $1 / 2 + $1 % 2 })
  }
}