# matching_parentheses.rb

# Write a method that takes a string as argument, and returns true if all
# parentheses in the string are properly balanced, false otherwise. To be
# properly balanced, parentheses must occur in matching '(' and ')' pairs.

# input - strimg
# output - boolean that states whether all parentheses in the string have
# matching pairs

# algorithm
# store input string in variable phrase
# initialize balanced variable to true
# create a loop
# use balanced = gsub! to substitute a substring that matches the pattern of
# one '(' followed by zero or more characters that are not 'C' followed by ')'
# with 'x'
# if the return value for gsub!, stored in balanced, is nil then break.
# otherwise, next.
# return balanced at the end of the method

# --- my solution
def balanced?(str)
  phrase = str
  balanced = true

  while phrase.count('()') > 0
    mod_phrase = phrase.gsub!(/[(][^()]*[)]/, '')
    balanced = false unless mod_phrase
    break unless balanced
  end
  balanced
end

#--- ls solution
def balanced?(string)
  parens = 0
  string.each_char do |char|
    parens += 1 if char == '('
    parens -= 1 if char == ')'
    break if parens < 0
  end
  parens.zero?
end


# Examples:

puts balanced?('What (is) this?') == true
puts balanced?('What is) this?') == false
puts balanced?('What (is this?') == false
puts balanced?('((What) (is this))?') == true
puts balanced?('((What)) (is this))?') == false
puts balanced?('Hey!') == true
puts balanced?(')Hey!(') == false
puts balanced?('What ((is))) up(') == false
# Note that balanced pairs must each start with a (, not a ).
