# palindromic_strings.rb

# Write a method that returns true if the string passed as an argument is a 
# palindrome, false otherwise. A palindrome reads the same forward and backward. 
# For this exercise, case matters as does punctuation and spaces.

# Examples:

# palindrome?('madam') == true
# palindrome?('Madam') == false          # (case matters)
# palindrome?("madam i'm adam") == false # (all characters matter)
# palindrome?('356653') == true

# input - a string
# output - boolean

# abstraction
# => method takes a string and checks to see if that string == the reverse of
# => that string

def palindrome?(str)
  str == str.reverse
end

def array_palindrome?(list)
  list == list.reverse
end

def any_palindrome?(list = [], str = "")
  list == list.reverse && str == str.reverse
end

puts palindrome?('madam')
puts palindrome?('Madam')
puts palindrome?("madam i'm adam")
puts palindrome?('356653')
puts any_palindrome?('abbc')