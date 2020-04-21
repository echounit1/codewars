# frozen_string_literal: true

def parts_sums(ls)
  out = []

  sum = ls.sum

  ls.each do |el|
    out << sum
    sum -= el
  end

  out << 0
end

p parts_sums([]) # [0]
p parts_sums([0, 1, 3, 6, 10]) # [20, 20, 19, 16, 10, 0]
p parts_sums([1, 2, 3, 4, 5, 6]) # [21, 20, 18, 15, 11, 6, 0]
p parts_sums([744_125, 935, 407, 454, 430, 90, 144, 6_710_213, 889, 810, 2_579_358])
# [10037855, 9293730, 9292795, 9292388, 9291934, 9291504, 9291414, 9291270, 2581057, 2580168, 2579358, 0]
