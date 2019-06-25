# string_to_int.rb

# The String#to_i method converts a string of numeric characters 
# (including an optional plus or minus sign) to an Integer. String#to_i and 
# the Integer constructor (Integer()) behave similarly. In this exercise, you 
# will create a method that does the same thing.

# Write a method that takes a String of digits, and returns the appropriate 
# number as an integer. You may not use any of the methods mentioned above.

# For now, do not worry about leading + or - signs, nor should you worry about 
# invalid characters; assume all characters will be numeric.

# You may not use any of the standard conversion methods available in Ruby, 
# such as String#to_i, Integer(), etc. Your method should do this the 
# old-fashioned way and calculate the result by analyzing the characters in 
# the string.

# Examples

# string_to_integer('4321') == 4321
# string_to_integer('570') == 570

# input - a string of number characters
# output - a number

# rules - you may not use to_i or Integer()

# algorithm - divide the input string into an array of characters.  iterate
# => through the array and for each element, use a subroutine char_to_num
# => (char, index) to get the number equivalent (300 for 3 in hundreds place)
# => character look up the matching number in the NUM_LIST.  Use a subroutine

require 'pry'

NUM_LIST = {'0'=> 0, '1'=> 1, '2'=> 2, '3'=> 3, '4'=> 4, '5'=> 5, '6'=> 6, 
            '7'=> 7,'8'=> 8, '9'=> 9, 'A'=> 10, 'B'=> 11, 'C'=> 12, 'D'=> 13, 
            'E'=> 14, 'F'=> 15}


#---my solution
def string_to_integer(str_num)
  sum = 0
  chars = str_num.chars
  chars.reverse!
  chars.each_index do |i|
    sum += char_to_num(chars[i], i)
  end
  sum
end

def char_to_num(char, index)
  unless index == 0
    NUM_LIST[char] * (10**index)
  else
    NUM_LIST[char]
  end
end

#---ls solution
def string_to_integer2(str_num)
  digits = str_num.chars.map { |char| NUM_LIST[char] }
  
  value = 0
  digits.each do |digit| 
    value = 10 * value + digit
  end
  value
end

#---hex to integer
def hexadecimal_to_integer(str_hex)
  # puts str_hex.hex
  hex_digits = str_hex.chars.map { |char| NUM_LIST[char.upcase] }
  p hex_digits
  value = 0
  hex_digits.each do |digit|
    value = 16 * value + digit
  end
  value
end

puts string_to_integer2('4321') == 4321
puts string_to_integer('570') == 570
puts hexadecimal_to_integer('4D9f') == 19871