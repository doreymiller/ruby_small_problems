# mult_av.rb

# Write a method that takes an Array of integers as input, multiplies all the
# numbers together, divides the result by the number of entries in the Array,
# and then prints the result rounded to 3 decimal places. Assume the array is
# non-empty.

# input - an array of integers
# output - a string that includes the results of multiplying all numbers
# together, dividing by array size, and rounding to 3 decimal places.

# algorithm
# use array.reduce(:*) to ge the product of the array
# divide by array.size
# output the result in a string, using format for the number to round to
# 3 decimal places.

def show_multiplicative_average(arr)
  result_num = arr.reduce(:*) / arr.size.to_f
  puts "The result is #{format('%.3f', result_num)}"
end

# Examples:

show_multiplicative_average([3, 5])
# The result is 7.500

show_multiplicative_average([6])
# The result is 6.000

show_multiplicative_average([2, 5, 7, 11, 13, 17])
# The result is 28361.667
