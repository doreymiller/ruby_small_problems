# daily_double.rb

# Write a method that takes a string argument and returns a new string that
# contains the value of the original string with all consecutive duplicate
# characters collapsed into a single character. You may not use
# String#squeeze or String#squeeze!.

# input - string
# output - original string with duplicate chars collapsed into single char

# algorithm
# iterate through the string with each_char and if the current character does
# not equal current_char then set the value of current_char, else delete the
# current character.

def crunch(str)
  current_char = nil
  new_str = ''
  str.each_char do |char| 
    if current_char != char
      new_str << char 
      current_char = char
    end
   end
   new_str
end

# Examples:

puts crunch('ddaaiillyy ddoouubbllee') == 'daily double'
puts crunch('4444abcabccba') == '4abcabcba'
puts crunch('ggggggggggggggg') == 'g'
puts crunch('a') == 'a'
puts crunch('') == ''