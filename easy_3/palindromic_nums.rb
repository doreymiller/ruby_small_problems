# palindromic_nums.rb

# Write a method that returns true if its integer argument is palindromic, 
# false otherwise. A palindromic number reads the same forwards and backwards.

# Examples:

# palindromic_number?(34543) == true
# palindromic_number?(123210) == false
# palindromic_number?(22) == true
# palindromic_number?(5) == true

def palindromic_number?(num)
  # my_list = num.digits
  # array_palindrome?(my_list)
  my_list = num.to_s
  palindrome?(my_list)
end

def array_palindrome?(list)
  list == list.reverse
end

def palindrome?(str)
  str == str.reverse
end

puts palindromic_number?(34543) == true
puts palindromic_number?(123210) == false
puts palindromic_number?(22) == true
puts palindromic_number?(002200) == true