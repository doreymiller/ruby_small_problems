# capwords.rb

# Write a method that takes a single String argument and returns a new string
# that contains the original value of the argument with the first character of
# every word capitalized and all other letters lowercase.

# You may assume that words are any sequence of non-blank characters.

# algorithm
# split string into an array of words
# iterate through words array and downcase! and capitalize! each item
# join array into new string to return

def word_cap(str)
  str.split(" ").each(&:capitalize!).join(" ")
end

# Examples

puts word_cap('four score and seven') == 'Four Score And Seven'
puts word_cap('the javaScript language') == 'The Javascript Language'
puts word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'