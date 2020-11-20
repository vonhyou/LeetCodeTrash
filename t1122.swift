var x = [Int](repeating: 0, count: 1023)
var res = [Int]()
var arr1 = [2,3,1,3,2,4,6,7,9,2,19], arr2 = [2,1,4,3,9,6]

for i in arr1 {
  x[i] += 1
}

for i in arr2 {
  while x[i] > 0 {
    res.append(i)
    x[i] -= 1
  }
}

for i in 0..<1023 {
  while x[i] > 0 {
    res.append(i)
    x[i] -= 1
  }
}

print(res)
