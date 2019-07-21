# palind_substr.rb

# Write a method that returns a list of all substrings of a string that are
# palindromic. That is, each substring must consist of the same sequence of
# characters forwards as it does backwards. The return value should be arranged
# in the same sequence as the substrings appear in the string. Duplicate
# palindromes should be included multiple times.

# You may (and should) use the substrings method you wrote in the previous
# exercise.

# For the purposes of this exercise, you should consider all characters and pay
# attention to case; that is, "AbcbA" is a palindrome, but neither "Abcba" nor
# "Abc-bA" are. In addition, assume that single characters are not palindromes.

# input - a string
# output - an array of all palindromic substrings

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

def palindromes(str)
  results = []
  all_substrings = substrings(str)
  
  all_substrings.each do |substring|
    if palindrome?(substring)
      results << substring
    end
  end
  p results
end

def palindrome?(str)
  str.size > 1 && str == str.reverse
end

# Examples:

puts palindromes('abcd') == []
puts palindromes('madam') == ['madam', 'ada']
puts palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
puts palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]