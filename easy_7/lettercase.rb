# lettercase.rb

# Write a method that takes a string, and then returns a hash that contains 3
# entries: one represents the number of characters in the string that are
# lowercase letters, one the number of characters that are uppercase letters,
# and one the number of characters that are neither.

# input - a string
# output - a hash that contains number of lowercase letters, uppercase, and
# neither

# algorithm
# initialize results empty hash
# convert input string to array using string.chars
# results[lowercase] = use chars.count with the block |x| ('a'..'z').include?(x)
# results[uppercase] = use chars.count with the block |x| ('A'..'Z').include?(x)
# results[neither] = chars.size - lowercase - uppercase
# return results

def letter_case_count(str)
  results = {}
  chars_arr = str.chars
  results[:lowercase] = chars_arr.count { |char| ('a'..'z').include?(char) }
  results[:uppercase] = chars_arr.count { |char| ('A'..'Z').include?(char) }
  results[:neither] = chars_arr.size - results[:lowercase] - results[:uppercase]
end

# Examples

puts letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
puts letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
puts letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
puts letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }