# letter_counter1.rb

# Write a method that takes a string with one or more space separated words 
# and returns a hash that shows the number of words of different sizes.

# Words consist of any string of characters that do not include a space.

# input - string
# output - hash with keys as word sizes and values as number of words of that
# size

# algorithm
# split string into array of words
# initialize empty words hash
# iterate through array and if word size exists as key, increment value by 1
# else add key to hash and set value at 1
# return hash

# --- my solution
# def word_sizes(str)
#   words = str.split(' ')
#   results = words.each_with_object({}) do |word, hash| 
#     word_size = word.size
#     if hash.key(word_size)
#       hash[word_size] += 1
#     else
#       hash[word_size] = 1
#     end
#   end
#   results
# end

# --- ls solution
def word_sizes(str)
  words = str.split(' ')
  counts = Hash.new(0)
  words.each do |word|
    counts[word.size] += 1
  end
  counts
end

# Examples

puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
puts word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
puts word_sizes('') == {}
