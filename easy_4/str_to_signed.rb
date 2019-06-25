# str_to_signed.rb

# Convert a String to a Signed Number!
# In the previous exercise, you developed a method that converts simple numeric 
# strings to Integers. In this exercise, you're going to extend that method to 
# work with signed numbers.

# Write a method that takes a String of digits, and returns the appropriate 
# number as an integer. The String may have a leading + or - sign; if the first 
# character is a +, your method should return a positive number; if it is a -, 
# your method should return a negative number. If no sign is given, you should 
# return a positive number.

# You may assume the string will always contain a valid number.

# You may not use any of the standard conversion methods available in Ruby, 
# such as String#to_i, Integer(), etc. You may, however, use the 
# string_to_integer method from the previous lesson.

# Examples

# string_to_signed_integer('4321') == 4321
# string_to_signed_integer('-570') == -570
# string_to_signed_integer('+100') == 100

# input - string
# output - number

# rules - if string has '-', output is negative, '+' output is positive, blank
# output is positive

# algorithm - if string includes '+', remove '+' from the string and use
# =>subroutine string_to_integer to convert string to integer, elsif string
# =>includes '-', remove '-' from the string and use subroutine to convert
# =>string to integer, multiplying result by -1, else just convert string to
# =>integer.  return integer

NUM_LIST = {'0'=> 0, '1'=> 1, '2'=> 2, '3'=> 3, '4'=> 4, '5'=> 5, '6'=> 6, 
            '7'=> 7,'8'=> 8, '9'=> 9}

def string_to_signed_integer(str)
  case str[0]
  when '+' then string_to_integer2(str[1..-1])
  when '-' then -string_to_integer2(str[1..-1])
  else string_to_integer2(str)
  end
end

def string_to_signed_integer2(str)
  modifier = (str[0] == '-') ? -1 : 1
  new_str = (str[0] == '-' || str[0] == '+') ? str[1..-1] : str
  string_to_integer2(new_str) * modifier
end

def string_to_integer2(str_num)
  digits = str_num.chars.map { |char| NUM_LIST[char] }
  
  value = 0
  digits.each do |digit| 
    value = 10 * value + digit
  end
  value
end

puts string_to_signed_integer2('4321') == 4321
puts string_to_signed_integer2('-570') == -570
puts string_to_signed_integer2('+100') == 100