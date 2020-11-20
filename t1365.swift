class Solution {
  func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
    var res = [Int](repeating: 0, count: nums.count)
    for i in 0..<nums.count {
      res[i] = nums.reduce(0, { $0 + ($1 < nums[i] ? 1 : 0) })
    }
    return res
  }
}
