# word_to_digit

# Write a method that takes a sentence string as input, and returns the same
# string with any sequence of the words 'zero', 'one', 'two', 'three', 'four',
# 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.

# input - string
# output - string with word numbers converted to digit numbers


WORD_DIGITS = {one: '1', two: '2', three: '3', four: '4', five: '5', six: '6',
  seven: '7', eight: '8', nine: '9'
}

# --- ls solution
# def word_to_digit(str)
#   WORD_DIGITS.keys.each do |key|
#     str.gsub!(/\b#{key}\b/, WORD_DIGITS[key])
#   end
#   p str
# end

def word_to_digit(str)
  words = str.split(/\b/)
  
  words.each_with_index do |word, index|
    word_sym = word.downcase.to_sym
    if WORD_DIGITS.has_key?(word_sym)
      words[index] = WORD_DIGITS[word_sym]
    end
  end
  
  p words.join.gsub!(/\d\s/) { |s| s[0] }
end

# Example:

puts word_to_digit('Please call me at five five five one two three four.'\
' Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

# Can you change your solution this so the spaces between consecutive numbers
# are removed? Suppose the string already contains two or more space separated
# numbers (not words); can you leave those spaces alone, while removing any
# spaces between numbers that you create?
