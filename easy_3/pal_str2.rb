# pal_str2.rb

# Write another method that returns true if the string passed as an argument is 
# a palindrome, false otherwise. This time, however, your method should be 
# case-insensitive, and it should ignore all non-alphanumeric characters. If 
# you wish, you may simplify things by calling the palindrome? method you wrote 
# in the previous exercise.

# Examples:

# real_palindrome?('madam') == true
# real_palindrome?('Madam') == true           # (case does not matter)
# real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
# real_palindrome?('356653') == true
# real_palindrome?('356a653') == true
# real_palindrome?('123ab321') == false

def palindrome?(str)
  str == str.reverse
end

def real_palindrome?(str)
  my_str = str.downcase.delete('^0-9a-z')
  palindrome?(my_str)
end

def array_palindrome?(list)
  list == list.reverse
end

def any_palindrome?(list = [], str = "")
  list == list.reverse && str == str.reverse
end

puts real_palindrome?('madam')
puts real_palindrome?('Madam')
puts real_palindrome?("Madam, I'm Adam")
puts real_palindrome?('356653')
puts real_palindrome?('abbc')