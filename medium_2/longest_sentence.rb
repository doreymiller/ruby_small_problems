# longest_sentence.rb

# Write a program that reads the content of a text file and then prints the
# longest sentence in the file based on number of words. Sentences may end with
# periods (.), exclamation points (!), or question marks (?). Any sequence of
# characters that are not spaces or sentence-ending characters should be treated
# as a word. You should also print the number of words in the longest sentence.

# input - a text file (string)
# output - a number for the number of words in he longest sentence

# algorithm
# initialize longest_sentence = 1
# read in text file to string text
# split text into sentences, using a regexp pattern for '.' ',' and '!'
# iterate through sentences array and split each sentence into a subarray of
# words.  if the length of the subarray is greater than longest_sentence
# then set longest_sentence to subarray length
# end loop
# return longest_sentence

# ---my solution
# def longest_sentence(file_name)
#   sentences = File.read(file_name).split(/[.?!]/)
#   longest = 1
  
#   sentences.each do |sentence|
#     num_words = sentence.split(" ").length
#     longest = num_words  if num_words > longest 
#   end
  
#   longest
# end

# ---ls solution
def longest_sentence(file_name)
  sentences = File.read(file_name).split(/(?<=[!.?])/)
  largest_sentence = sentences.max_by { |sentence| sentence.split.length }
  largest_sentence.strip!
  num_words = largest_sentence.split.length
  
  puts "num words #{num_words}"
  puts "#{largest_sentence}"
  
end

longest_sentence("four_score.txt")
# p longest_sentence("book.txt")