class Solution {
  func maxWidthOfVerticalArea(_ points: [[Int]]) -> Int {
    var sol = points.sorted() { $0[0] > $1[0] }
    var res = 0
    for i in 0..<sol.count - 1 {
      var dis = sol[i][0] - sol[i + 1][0]
      res = res > dis ? res : dis
    }
    return res
  }
}