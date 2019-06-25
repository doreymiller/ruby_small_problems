# num_to_str.rb

# In the previous two exercises, you developed methods that convert simple 
# numeric strings to signed Integers. In this exercise and the next, you're 
# going to reverse those methods.

# Write a method that takes a positive integer or zero, and converts it to a 
# string representation.

# You may not use any of the standard conversion methods available in Ruby, 
# such as Integer#to_s, String(), Kernel#format, etc. Your method should do 
# this the old-fashioned way and construct the string by analyzing and 
# manipulating the number.

# Examples

# integer_to_string(4321) == '4321'
# integer_to_string(0) == '0'
# integer_to_string(5000) == '5000'

# input - number
# output = string

# rules - cannot use #to_s, String(), #format, etc.  do reverse of str to int

# algorithm - create a lookup table with integers as keys and string
# => equivalent as values.  in method integer_to_string, initialize variable
# => new_str = "".  convert integer to array of digits using #digits.
# => iterate through digits and lookup each digit from table to get string char.
# => add char to new_str.  return new_st

NUM_LIST = { 0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5', 
            6 => '6', 7 => '7', 8 => '8', 9 => '9' }

# --- my solution
def integer_to_string(int)
  new_str = ""
  digits = int.digits.reverse!
  digits.each { |digit| new_str << NUM_LIST[digit] }
  new_str
end

# --- ls solution
def integer_to_string2(int) 
  result = ''
  loop do
    int, remainder = int.divmod(10)
    result.prepend(NUM_LIST[remainder])
    break if int == 0
  end
  result
end

puts integer_to_string2(4321) == '4321'
puts integer_to_string2(0) == '0'
puts integer_to_string2(5000) == '5000'