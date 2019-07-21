# always_ret_neg.rb

# Write a method that takes a number as an argument. If the argument is a
# positive number, return the negative of that number. If the number is 0 or
# negative, return the original number.

# input - number
# output - a number( if input is positive, return negative value of input. 
# if input is negative or 0, return input number)

# algorithm
# if num is greater than 0, return -num
# else return num

def negative(num)
  num > 0 ? -num : num
end

# Examples;

puts negative(5) == -5
puts negative(-3) == -3
puts negative(0) == 0      # There's no such thing as -0 in ruby