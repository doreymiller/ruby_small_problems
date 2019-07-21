# double_char2.rb

# Write a method that takes a string, and returns a new string in which
# every consonant character is doubled. Vowels (a,e,i,o,u), digits, punctuation,
# and whitespace should not be doubled.

# input - string
# output - new string using the original string but with each character doubled

# algorithm
# initialize new empty string results = ""
# iterate through string using each_char
# add char * 2 to results if char.downcase matches [a-z] && [^aeiou]
# return results

def double_consonants(str)
  results = ""
  str.each_char do |char| 
    if char.downcase =~ /[a-z&&[^aeiou]]/
      results << char * 2 
    else
      results << char
    end
  end
  results
end


# Examples:

puts double_consonants('String') == "SSttrrinngg"
puts double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
puts double_consonants("July 4th") == "JJullyy 4tthh"
puts double_consonants('') == ""