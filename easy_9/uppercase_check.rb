# uppercase_check.rb

# Write a method that takes a string argument, and returns true if all of the
# alphabetic characters inside the string are uppercase, false otherwise.
# Characters that are not alphabetic should be ignored.

# input - string
# output - boolean (true if all alphabetic chars in string are uppercase, false
# otherwise)

# algorithm
# iterate through each_char of string
# if the char matches the regexp a-z then return false
# else return true

def uppercase?(str)
  str.each_char do |char|
    return false if char =~ /[a-z]/
  end
  true
end

# Examples:

puts uppercase?('t') == false
puts uppercase?('T') == true
puts uppercase?('Four Score') == false
puts uppercase?('FOUR SCORE') == true
puts uppercase?('4SCORE!') == true
puts uppercase?('') == true