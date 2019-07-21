# all_substr.rb

# Write a method that returns a list of all substrings of a string. The returned
# list should be ordered by where in the string the substring begins. This means
# that all substrings that start at position 0 should come first, then all
# substrings that start at position 1, and so on. Since multiple substrings
# will occur at each position, the substrings at a given position should be
# returned in order from shortest to longest.

# You may (and should) use the substrings_at_start method you wrote in the
# previous exercise:



def substrings_at_start(str)
  results = []
  count = 1
  
  str.size.times do
    results << str.slice(0, count)
    count += 1
  end
  results
end

def substrings(str)
  results = []
  count = 0
  
  str.size.times do
    results << substrings_at_start(str.slice(count, str.size - count))
    count += 1
  end
  results.flatten
end

# Examples:

puts substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]