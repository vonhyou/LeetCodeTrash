func multiply(_ a: Int, _ b: Int) -> Int {
  a == 0 || b == 0 ? 0 : a + multiply(a, b - 1) 
}