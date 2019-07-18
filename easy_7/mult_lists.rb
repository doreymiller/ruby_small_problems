# mult_lists.rb

# Write a method that takes two Array arguments in which each Array contains a
# list of numbers, and returns a new Array that contains the product of each
# pair of numbers from the arguments that have the same index. You may assume
# that the arguments contain the same number of elements.

# input - two arrays which contain numbers
# output - one array that contains the product of each pair of numbers from
# the input lists

# algorithm
# initialize results array
# iterate through array 1 using each_with_index
# add the product of array 1 item and array 2 at index to the new results array
# return array

def multiply_list(arr1, arr2)
  results = []
  arr1.each_with_index do |item, index|
    results << item * arr2[index]
  end
  results
end

def multiply_list_zip(arr1, arr2)
  arr1.zip(arr2).map { |arr| arr.reduce(:*) }
end

# Examples:

puts multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
puts multiply_list_zip([3, 5, 7], [9, 10, 11]) == [27, 50, 77]