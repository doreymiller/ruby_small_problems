# sum_digits.rb

# Write a method that takes one argument, a positive integer, and returns the 
# sum of its digits.

# Examples:

# puts sum(23) == 5
# puts sum(496) == 19
# puts sum(123_456_789) == 45
# The tests above should print true.

# For a challenge, try writing this without any basic looping constructs 
# (while, until, loop, and each).

# input
# => a positive integer
# output
# => an integer, the sum of the digits of the input

# abstraction
# => take an integer input, convert it to an array of digits, and then return 
# => the sum of the digits of the array

def sum_digits(int)
  d_arr = int.to_s.split('').map(&:to_i)
  sum = d_arr.reduce(:+)
end

puts sum_digits(1234)