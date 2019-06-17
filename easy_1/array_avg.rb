# array_avg.rb

# Write a method that takes one argument, an array containing integers, and 
# returns the average of all numbers in the array. The array will never be 
# empty and the numbers will always be positive integers.

# Examples:

# puts average([1, 5, 87, 45, 8, 8]) == 25
# puts average([9, 47, 23, 95, 16, 52]) == 40
# The tests above should print true.

# input
# => an array containing integers, of size >= 1, containing only positive
# => integers
# output
# => a number that is the average of all of the integers in the input array

# abstraction
# =>initialize a total variable to 0. iterate through the array and add the 
# =>current element to the total.  Then divide by the size of the array and
# =>return the number

# my solution
def array_average(array)
  total = 0
  array.each { |int| total += int }
  total/array.size
end

# ls solution
def array_average_sol(array)
  sum = array.reduce { |sum, num| sum + num }
  sum / array.count
end

puts array_average_sol([3,6,9,4])
puts array_average_sol([1])
puts array_average_sol([10,2])


