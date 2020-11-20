# @param {Integer} num
# @return {Integer}
def number_of_steps (num)
  num.to_s(2).count("0") + num.to_s(2).count("1") * 2 - 1
end
