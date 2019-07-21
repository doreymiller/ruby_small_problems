# leading_substr.rb

# Write a method that returns a list of all substrings of a string that start at
# the beginning of the original string. The return value should be arranged in
# order from shortest to longest substring.

# input - string
# output - array of substrings that start with the beginning of the original
# string

# algorithm
# initialize empty results array, count = 1
# loop for str.size times
# add str.slice(0, count) to results array
# count += 1

def substrings_at_start(str)
  results = []
  count = 1
  
  str.size.times do
    results << str.slice(0, count)
    count += 1
  end
  results
end

# Examples:

puts substrings_at_start('abc') == ['a', 'ab', 'abc']
puts substrings_at_start('a') == ['a']
puts substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
