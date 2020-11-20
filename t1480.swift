func runningSum(_ nums: [Int]) -> [Int] {
  var ans = [Int]()

  ans.append(nums[0])

  for i in 1..<nums.count {
    ans.append(nums[i] + ans[i - 1])
  }
    
  return ans
}