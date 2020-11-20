class Solution {
  func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var res = [Int]()
    for i in 0..<nums.count - 1 {
      for j in i + 1..<nums.count {
        if nums[i] + nums[j] == target {
          res.append(i)
          res.append(j)
          break;
        } 
      }
    }
    return res 
  }
}