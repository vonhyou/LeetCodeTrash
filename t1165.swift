class Solution {
  func calculateTime(_ keyboard: String, _ word: String) -> Int {
    var charIntMap = [Character](keyboard)
    var hier = 0, res = 0

    for c in word {
      res += abs(charIntMap.firstIndex(of: c)! - hier)
      hier = charIntMap.firstIndex(of: c)!
    }
    return res
  }
}