# end_is_near.rb

# Write a method that returns the next to last word in the String passed to it
# as an argument.

# Words are any sequence of non-blank characters.

# You may assume that the input String will always contain at least two words.

# input - string of at least two words
# output - second to last word of string

# algorithm
# split input string into array
# return item array[-2]


def penultimate(str)
  str.split(" ")[-2]
end

# Examples:

puts penultimate('last word') == 'last'
puts penultimate('Launch School is great!') == 'is'


# further exploration
# Suppose we need a method that retrieves the middle word of a phrase/sentence.
# What edge cases need to be considered? How would you handle those edge cases
# without ignoring them? Write a method that returns the middle word of a phrase
# or sentence. It should handle all of the edge cases you thought of.

# input - string that contains a phrase/sentence
# output - a string that contains the middle word of the phrase/sentence

# edge cases:  
# even number of words in phrase (going to return the second of the two middle
# words)
# just one word

# algorithm
# split string into array of words
# take word at array[array.size/2 - 1]

def middle_word(str)
  words = str.split(" ")
  middle_word = words[words.size/2]
end

puts middle_word("hello there, how are you?")
puts middle_word("hello there my love")
puts middle_word("hello")
puts middle_word("")


