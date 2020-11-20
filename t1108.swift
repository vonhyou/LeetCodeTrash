class Solution {
  func defangIPaddr(_ address: String) -> String {
    address.components(separatedBy: ".").joined(separator: "[.]")
  }
}