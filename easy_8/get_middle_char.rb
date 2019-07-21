# get_middle_char.rb

# Write a method that takes a non-empty string argument, and returns the middle
# character or characters of the argument. If the argument has an odd length, you
# should return exactly one character. If the argument has an even length, you
# should return exactly two characters.

# input- a string
# output - a string containing middle char(s) -- if string has odd length, return
# one char, if string has even length return 2 chars

# algorithm
# if input has odd number of chars (string.chars.size.odd?) then 
# return middle char (string[chars.size/2 + 1])
# else return a slice of the string with two middle chars
# string.slice(chars.size/2, 1)

def center_of(str)
  p str.length.odd? ? str[str.length/2] : str[str.length/2 - 1, 2]
end

# Examples:

puts center_of('I love ruby') == 'e'
puts center_of('Launch School') == ' '
puts center_of('Launch') == 'un'
puts center_of('Launchschool') == 'hs'
puts center_of('x') == 'x'
