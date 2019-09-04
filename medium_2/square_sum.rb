# square_sum.rb

# Write a method that computes the difference between the square of the sum of
# the first n positive integers and the sum of the squares of the first n
# positive integers.

# input - a number
# output - a number

# algorithm
# initialize sums variable and squares variable to 0, count to 1
# loop using 1 to input number
# acd the square of count to sums.  add count to squares
# square squares and return sums - squares

def sum_square_difference(num)
  sums = 0
  squares = 0
 
  1.upto(num) do |value|
    sums += value
    squares += value**2
  end
  sums**2 - squares
end

# Examples:

puts sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
puts sum_square_difference(10) == 2640
puts sum_square_difference(1) == 0
puts sum_square_difference(100) == 25164150