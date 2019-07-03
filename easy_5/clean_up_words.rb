# clean_up_words.rb

# Given a string that consists of some words and an assortment of
# non-alphabetic characters, write a method that returns that string
# with all of the non-alphabetic characters replaced by spaces. If one
# or more non-alphabetic characters occur in a row, you should only have
# one space in the result (the result should never have consecutive spaces).

# input - string
# output - string with non-alphabetic characters replaced by spaces and any
# repeated spaces in a row changed to one space.


# algorithm
# use string gsub method and pass in the regexp of non-alphabetic characters
# use the squeeze method to remove extra white space


def cleanup(str)
  result = str.gsub!(/[^a-z]/i, ' ')
  result.squeeze(' ')
end

# Examples:

puts cleanup("---what's my +*& line?") == ' what s my line '