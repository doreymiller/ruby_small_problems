# fib.rb

# The Fibonacci series is a series of numbers (1, 1, 2, 3, 5, 8, 13, 21, ...)
# such that the first 2 numbers are 1 by definition, and each subsequent number
# is the sum of the two previous numbers. This series appears throughout the
# natural world.

# Computationally, the Fibonacci series is a very simple series, but the results
# grow at an incredibly rapid rate. For example, the 100th Fibonacci number
# is 354,224,848,179,261,915,075 -- that's enormous, especially considering
# that it takes 6 iterations before it generates the first 2 digit number.

# Write a method that calculates and returns the index of the first Fibonacci
# number that has the number of digits specified as an argument. (The first
# Fibonacci number has index 1.)



# You may assume that the argument is always greater than or equal to 2.

# input number - number of digits
# output number - index number of the first number in the fib series that 
# contains the number of digits in the input number

# algorithm
# create a loop that calculates the next number in the fib series by using the 
# past two numbers in the series.  store these numbers if not already created
# for use in the next run of the loop.  take the next number in series and 
# convert to string.  if the length of the string is equal to the input number
# then break from the loop and return number

def find_fibonacci_index_by_length(num)
  first_num = 1
  second_num = 1
  count = 3
  loop do 
    result = first_num + second_num
    break if result.to_s.size == num
    first_num, second_num = second_num, result
    count += 1
  end
  count
end

# Examples:

puts find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
puts find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
puts find_fibonacci_index_by_length(10) == 45
puts find_fibonacci_index_by_length(100) == 476
puts find_fibonacci_index_by_length(1000) == 4782
puts find_fibonacci_index_by_length(10000) == 47847