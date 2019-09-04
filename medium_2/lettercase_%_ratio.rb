# lettercase_%_ratio.rb

# Write a method that takes a string, and then returns a hash that contains 3
# entries: one represents the percentage of characters in the string that are
# lowercase letters, one the percentage of characters that are uppercase 
# letters, and one the percentage of characters that are neither.

# You may assume that the string will always contain at least one character.

# input - string
# output - hash with keys lowercase, uppercase, and neither and values are a
# percentage of characters that match criteria

# algorithm
# initialize results hash
# use the string.count method with regex parameters to determine number of
# lowercase and uppercase characters.
# subtract the sum of lowercase and uppercase characters to determine amount of
# neither
# use percentage calculation (count / total) * 100 to get values for hash
# return hash

def letter_percentages(str)
  results = { uppercase: 0, lowercase: 0, neither: 0 }
  
  uppercase_chars = str.scan(/[A-Z]/).length.to_f
  lowercase_chars = str.scan(/[a-z]/).length.to_f

  results[:uppercase] = (uppercase_chars / str.size) * 100
  results[:lowercase] = (lowercase_chars / str.size) * 100
  results[:neither] = 100 - results[:uppercase] - results[:lowercase]

  results.each { |_key, val| val.round(2) }

  results
end

# Examples

puts letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, 
                                           neither: 40 }
puts letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, 
                                         neither: 25 }
puts letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
