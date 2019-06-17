# reverse_it_1.rb

# Write a method that takes one argument, a string, and returns a new 
# string with the words in reverse order.

# Examples:

# puts reverse_sentence('') == ''
# puts reverse_sentence('Hello World') == 'World Hello'
# puts reverse_sentence('Reverse these words') == 'words these Reverse'
# The tests above should print true.

# input
# => a string
# output
# => new string with words in reverse order

# abstraction
# => take a string as input and split the string into an array of words, then 
# => reverse the array of words and convert back into a string.  return the new
# => string.

def reverse_sentence(str)
  word_array = str.split(" ")
  new_str = word_array.reverse.join(" ")
end

puts reverse_sentence('Reverse these words')