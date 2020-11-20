# 你他娘能不能好好读题？？？？？？？

# @param {Integer} x
# @return {Integer}
def reverse(x)
  sig = x > 0 ? "" : "-"
  res = (sig + x.abs.to_s.reverse).to_i
  res > 2 ** 31 - 1 || res < -2 ** 31 ? 0 : res
end