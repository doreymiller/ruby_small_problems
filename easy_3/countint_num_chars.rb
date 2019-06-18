# counting_num_chars.rb

# Write a program that will ask a user for an input of a word or multiple words 
# and give back the number of characters. Spaces should not be counted as a 
# character.

# input:

# Please write word or multiple words: walk
# output:

# There are 4 characters in "walk".
# input:

# Please write word or multiple words: walk, don't run
# output:

# There are 13 characters in "walk, don't run".

# input
# => a string 
# => => a word or multiple words
# output
# => a number
# => => the number of characters (spaces not included in number)

# abstraction
# => prompt user for string.  convert string to array by splitting using " " as
# => delimiter.  iterate through array and count all of the characters.  print
# => results.

# my solution ---------------------
# puts "Please write a word or multiple words:"
# answer = gets.chomp
# words_list = answer.split(" ")
# char_count = 0
# words_list.each do |word|
#   char_count += word.size
# end
# puts "There are #{char_count} characters in \"#{answer}\""."

# ls solution --------------------------
puts "Please write a word or multiple words:"
answer = gets.chomp
char_count = answer.delete(" ").size
puts "There are #{char_count} characters in \"#{answer}\"."