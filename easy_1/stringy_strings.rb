# stringy_strings.rb

# Write a method that takes one argument, a positive integer, and returns a 
# string of alternating 1s and 0s, always starting with 1. The length of the 
# string should match the given integer.

# Examples:

# puts stringy(6) == '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'
# The tests above should print true.

# input
# => a positive integer
# output
# => a string of alternating 1s and 0s, always starting with 1, the length of
# => the integer

# abstraction
# => take positive integer input and for int times, add alternating '1' and '0'
# => return the string

def stringy_string (int)
  true_var = true
  new_str = ""
  int.times do 
    true_var ? new_str << '1' : new_str << '0'
    true_var = !true_var
  end
  new_str
end

puts stringy_string(8)