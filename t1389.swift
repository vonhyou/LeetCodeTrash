class Solution {
  func createTargetArray(_ nums: [Int], _ index: [Int]) -> [Int] {
    var res = [Int]()
    for (num, index) in zip(nums,index) {
      res.insert(num, at: index)
    }
    return res
  }
}
