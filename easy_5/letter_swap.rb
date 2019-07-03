# letter_swap.rb

# Given a string of words separated by spaces, write a method that takes this
# string of words and returns a string in which the first and last letters of
# every word are swapped.

# You may assume that every word contains at least one letter, and that the
# string will always contain at least one word. You may also assume that each
# string contains nothing but words and spaces

# input - string
# output - string with first and last letter of every word swapped

# algorithm
# break up the string into an array using " " delimiter
# iterate through array and if size of element is greater than 1,
# slice the first letter and last letter and concatenate with
# last letter + original string + first letter
# join the string with " "

require 'pry'

# --- my solution
# def swap(str)
#   words = str.split(' ')
#   words.each do |word|
#     next if word.size <= 1
#     first_letter = word.slice!(0)
#     last_letter = word.slice!(word.size - 1)
#     word.prepend(last_letter)
#     word << first_letter
#   end
#   words.join(' ')
# end

# --- ls solution
def swap_first_last_char(word)
  word[0], word[-1] = word[-1], word[0]
  word
end

def swap(str)
  result = str.split.map do |word|
    swap_first_last_char(word)
  end
  result.join(' ')
end

puts swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
puts swap('Abcde') == 'ebcdA'
puts swap('a') == 'a'
