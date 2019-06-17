# reverse_it_2.rb

# Write a method that takes one argument, a string containing one 
# or more words, and returns the given string with all five or more 
# letter words reversed. Each string will consist of only letters and spaces. 
# Spaces should be included only when more than one word is present.

# Examples:

# puts reverse_words('Professional')          # => lanoisseforP
# puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
# puts rev

# input
# => a string containing one or more words, consisting of only letters and 
# =>spaces
# output
# => a new string duplicated from the original string, but with all words
# =>containing 5 or more letters reversed

# abstract
# => take input string and split words into an array.  Iterate through each
# =>item in the array and if the length of current item is >= 5 then reverse the
# => current item.  Join the array and return the new string 

def reverse_sentence(str)
  word_array = str.split(" ")
  word_array.each do |item| 
    item.reverse! if item.size >= 5
  end
  word_array.join(" ")
end

puts reverse_sentence('Walk around the block')