class Solution {
  func maximumGap(_ nums: [Int]) -> Int {
    if nums.count < 2 {
      return 0
    }
    let arr = nums.sorted()
    
    var res = 0
    for i in 0..<nums.count - 1 {
      res = res < arr[i + 1] - arr[i] ? arr[i + 1] - arr[i] : res
    }
    return res
  }
}