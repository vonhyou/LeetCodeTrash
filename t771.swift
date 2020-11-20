class Solution {
  func numJewelsInStones(_ J: String, _ S: String) -> Int {
    var res = 0
    for i in J {
      for j in S {
        if i == j {
          res += 1
        }
      }
    }
    return res 
  }
}