# double_char1.rb

# Write a method that takes a string, and returns a new string in which every
# character is doubled.

# input - string
# output - new string using the original string but with each character doubled

# algorithm
# initialize new empty string results = ""
# iterate through string using each_char
# add char * 2 to results
# return results

def repeater(str)
  results = ""
  str.each_char { |char| results << char * 2 }
  results
end


# Examples:

puts repeater('Hello') == "HHeelllloo"
puts repeater("Good job!") == "GGoooodd  jjoobb!!"
puts repeater('') == ''