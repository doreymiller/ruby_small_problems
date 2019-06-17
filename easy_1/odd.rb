# odd.rb

# Write a method that takes one integer argument, which may be positive, 
# negative, or zero. This method returns true if the number's absolute value 
# is odd. You may assume that the argument is a valid integer value.

# input
# => one integer (positive, negative, or zero)
# => assume input is valid integer
# output
# => true if absolute value of input is odd, false if even

def odd?(int)
  int.abs % 2 == 1
end

def is_odd?(int)
  int.remainder(2) == 1
end

puts odd?(6)
puts odd?(0)
puts odd?(7)

puts is_odd?(6)
puts is_odd?(0)
puts is_odd?(7)

