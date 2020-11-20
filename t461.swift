func hammingDistance(_ x: Int, _ y: Int) -> Int {
  var s = x ^ y, cnt = 0
  while s > 0 {
    cnt += s & 1 != 0 ? 1 : 0
    s >>= 1
  }
  return cnt
}