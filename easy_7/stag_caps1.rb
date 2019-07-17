# stag_caps1.rb

# Write a method that takes a String as an argument, and returns a new String
# that contains the original value using a staggered capitalization scheme in
# which every other character is capitalized, and the remaining characters are
# lowercase. Characters that are not letters should not be changed, but count as
# characters when switching between upper and lowercase.

# input - string
# output - new string with every other character capitalized.  non letter
# characters should not be changed but should be counted.

# algorithm
# initialize capital variable to true
# initialize new empty string
# iterate through string using each_char
# if char =~ /a-zA-Z/ 
# nested if capital then char.upcase! else char.downcase!
# << char to new string
# capital = !capital

def staggered_case(str, start_up_case = true)
  capital = start_up_case
  result_str = ""
  str.each_char do |char|
    if char =~ /[a-zA-Z]/
      capital ? char.upcase! : char.downcase!
    end
    result_str << char
    capital = !capital
  end
  p result_str   
end


# Example:

puts staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
puts staggered_case('ALL_CAPS') == 'AlL_CaPs'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'