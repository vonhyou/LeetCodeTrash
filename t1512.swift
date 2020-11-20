class Solution {
  func numIdenticalPairs(_ nums: [Int]) -> Int {
    var len = nums.count, res = 0

    for i in 0..<len - 1 {
      for j in (i + 1)..<len {
        if nums[i] == nums[j] {
          res += 1
        }
      }
    }
    return res
  }
}