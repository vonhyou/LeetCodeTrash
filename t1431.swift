class Solution {
  func getMax(_ data: [Int], _ n: Int) -> Int {
    var maxn = data[0]
    for num in data {
      maxn = num > maxn ? num : maxn
    }
    return maxn
  }

  func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
    var flag = getMax(candies, candies.count - 1), res = [Bool]()
    for candy in candies {
      res.append(flag <= candy + extraCandies)
    }
    return res
  }
}