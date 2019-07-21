# double_doubles.rb

# A double number is a number with an even number of digits whose left-side
# digits are exactly the same as its right-side digits. For example,
# 44, 3333, 103103, 7676 are all double numbers. 444, 334433, and 107 are not.

# Write a method that returns 2 times the number provided as an argument, unless
# the argument is a double number; double numbers should be returned as-is.

# input - number
# output - number (if input is a double number, return as is, otherwise return
# input number doubled)

# algorithm
# convert input number to a string
# if str.length.even?
# then compare first half of string with second
# if (str[0,str.length/2 - 1]) == (str[str.length/2, str.length/2]) then
# return num, else return input num * 2

def twice(num)
  num_str = num.to_s
  if num_str.length.even?
    midpoint = num_str.length / 2
    return num if num_str[0, midpoint] == num_str[midpoint, midpoint]
  end
  num * 2
end

# Examples:

puts twice(37) == 74
puts twice(44) == 44
puts twice(334433) == 668866
puts twice(444) == 888
puts twice(107) == 214
puts twice(103103) == 103103
puts twice(3333) == 3333
puts twice(7676) == 7676
puts twice(123_456_789_123_456_789) == 123_456_789_123_456_789
puts twice(5) == 10