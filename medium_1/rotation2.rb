# rotation2.rb

# Write a method that can rotate the last n digits of a number. For example:

# You may use the rotate_array method from the previous exercise if you want. 
# (Recommended!)

# You may assume that n is always a positive integer.

# input - 2 integers (first is the original number and the second is the digit
# number, starting from the right, that you want to move to the end of the 
# number)
# output - an integer

# algorithm
# take input num and convert to string, then to array of chars
# take a slice of the chars array, from input -digit with length digit and pass
# that to the rotate_array method.
# concatenate first half of chars array joined with rotated array joined
# convert to integer and return value


def rotate_array(arr)
  results = arr.map { |n| n }
  results << results.shift
end

def rotate_rightmost_digits(num, digit)
  chars = num.to_s.chars
  unless chars.length == digit
    first = chars[0..(chars.length - 1 - digit)]
  else
    first = []
  end
  second = chars.slice(-digit, digit)
  first.join.concat(rotate_array(second).join).to_i
end

# Example:

puts rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
puts rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
puts rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
puts rotate_array(x) == [2, 3, 4, 1]   # => true
puts x == [1, 2, 3, 4]                 # => true

puts rotate_rightmost_digits(735291, 1) == 735291
puts rotate_rightmost_digits(735291, 2) == 735219
puts rotate_rightmost_digits(735291, 3) == 735912
puts rotate_rightmost_digits(735291, 4) == 732915
puts rotate_rightmost_digits(735291, 5) == 752913
puts rotate_rightmost_digits(735291, 6) == 352917
# Note that rotating just 1 digit results in the original number being returned.