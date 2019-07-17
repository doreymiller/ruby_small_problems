# swapcase.rb

# Write a method that takes a string as an argument and returns a new string in
# which every uppercase letter is replaced by its lowercase version, and every
# lowercase letter by its uppercase version. All other characters should be
# unchanged.

# You may not use String#swapcase; write your own version of this method.

# input - string
# output - a new string with letter cases swapped

# algorithm
# iterate through string with each_char
# if uppercase range includes char then char.downcase!
# elsif downcase range includes char then char.upcase!
# return new string


def swapcase(str)
  result_str = ""
  str.each_char do |char|
    if ('a'..'z').to_a.include?(char)
      char.upcase!
    elsif ('A'..'Z').include?(char)
      char.downcase!
    end
    result_str << char
  end
  result_str
end

# Example:

puts swapcase('CamelCase') == 'cAMELcASE'
puts swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'