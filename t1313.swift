class Solution {
  func decompressRLElist(_ nums: [Int]) -> [Int] {
    var res = [Int](), i = 0
    while i < nums.count {
      res.append(contentsOf: [Int](repeating: nums[i + 1], count: nums[i]))
      i += 2
    }
    return res
  }
}