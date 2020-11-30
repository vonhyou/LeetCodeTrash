// 高精度乘法
import Foundation

func multiply(_ num1: String, _ num2: String) -> String {
  var a = Array(String(num1.reversed())).map{ Int(String($0))! }, 
      b = Array(String(num2.reversed())).map{ Int(String($0))! }, 
      w: Int = 0, k: Int = 0
  var res = [Int](repeating: 0, count: 2000)

  for i in 0..<a.count {
    for j in 0..<b.count {
      res[i + j] += a[i] * b[j]
      if res[i + j] > 0 { w = i + j }
    }
  }
  for i in 0...w + 5 {
    res[i + 1] += res[i] / 10
    res[i] %= 10
    if res[i] > 0 { k = i }
  }
  return res[0...k].reversed().map{ String($0) }.joined(separator: "")
}

print(multiply("123", "456"))
