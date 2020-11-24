class Solution {
  func removeVowels(_ S: String) -> String {
    let vowel: Set<Character> = ["a", "e", "i", "o", "u"]
    var res = S
    res.removeAll(where: { vowel.contains($0) })
    return res 
  }
}