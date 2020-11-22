class Solution {
  func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    let s1 = Set(nums1), s2 = Set(nums2)
    return Array(s1.intersection(s2))
  }
}