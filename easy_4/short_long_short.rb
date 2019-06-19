# short_long_short

# Write a method that takes two strings as arguments, determines the longest 
# of the two strings, and then returns the result of concatenating the shorter 
# string, the longer string, and the shorter string once again. You may assume 
# that the strings are of different lengths.

# Examples:

# short_long_short('abc', 'defgh') == "abcdefghabc"
# short_long_short('abcde', 'fgh') == "fghabcdefgh"
# short_long_short('', 'xyz') == "xyz"

# input two strings
# output one string (short string + long string + short string)

# rules
# => strings are different lengths.  string can be empty

# algorithm
# => determine which string parameter has a greater size and
# => concatenate strings (short_str + long_str + short_str)

def short_long_short(str1, str2)
  if str1.size > str2.size
    str2 + str1 + str2
  else
    str1 + str2 + str1
  end
end

puts short_long_short('abc', 'defgh')
puts short_long_short('abcde', 'fgh')
puts short_long_short('', 'xyz')