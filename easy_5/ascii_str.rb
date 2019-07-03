# ascii_str.rb

# input - string
# output - number (sum of the ascii values of all of the string characters)

# rules - can use String#ord

# algorithm
# => create a new array with str.chars
# => map str.chars to new array using str.ord as block parameter.  
# => use array.reduce to get sum of array elements
# => return reduced value

# --- my solution
def ascii_value2(str)
  return 0 if str.length == 0
  ord_arr = str.chars.map { |char| char.ord }
  ord_arr.reduce(:+)
end

# --- ls solution
def ascii_value(str)
  sum = 0
  str.each_char { |char| sum += char.ord }
  sum
end
  
puts ascii_value('Four score') == 984
puts ascii_value('Launch School') == 1251
puts ascii_value('a') == 97
puts ascii_value('') == 0

