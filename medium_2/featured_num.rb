# featured_num.rb

# A featured number (something unique to this exercise) is an odd number that is
# a multiple of 7, and whose digits occur exactly once each. So, for example, 49
# is a featured number, but 98 is not (it is not odd), 97 is not (it is not a
# multiple of 7), and 133 is not (the digit 3 appears twice).

# Write a method that takes a single integer as an argument, and returns the next
# featured number that is greater than the argument. Issue an error message if
# there is no next featured number.

# input - a number
# output - a number that is the next featured number after the input

# algorithm
# divide the input number by 7 to find the last multiple of seven and store in a
# variable.  in a while loop, increment variable by one, multiply by 7 and test
# to see if it meets the requirements for featured (is odd, has unique digits)
# if so, return the variable number.  break out of loop if numner of digits in
# multiplied number exceeds 10

def featured(num)
  last_product = num / 7
  
  while num.to_s.length <= 10 do
    last_product += 1
    num = last_product * 7
    if num.odd? && num.to_s.length == num.to_s.chars.uniq.length
      return num
    end
  end
  
  'There is no next featured number'
end

# Examples:

puts featured(12) == 21
puts featured(20) == 21
puts featured(21) == 35
puts featured(997) == 1029
puts featured(1029) == 1043
puts featured(999_999) == 1_023_547
puts featured(999_999_987) == 1_023_456_987

puts featured(9_999_999_999) # -> There is no possible number that fulfills those
# requirements