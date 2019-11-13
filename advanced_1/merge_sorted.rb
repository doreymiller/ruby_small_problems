# merge_sorted.rb

# Write a method that takes two sorted Arrays as arguments, and returns a new
# Array that contains all elements from both arguments in sorted order.

# You may not provide any solution that requires you to sort the result array.
# You must build the result array one element at a time in the proper order.

# Your solution should not mutate the input arrays.

# input - two sorted arrays
# output - a new array with all elements from first two in sorted order

# algorithm
# create new results array that is map of first array
# loop through second array and for each index of the second array, loop through
# the new results array and compare values.  if the value of the second array
# element is greater than the results array element, insert the element at the
# results index + 1
# return results

def merge(array1, array2)
  order = array1.empty? ? [array2, array1] : [array1, array2]
  results = order[0].map { |x| x }

  order[1].each do |a_value|
    results.each_with_index do |r_value, index|
      if r_value > a_value
        results.insert(index, a_value)
        break
      end
    end
  end

  results
end

# Examples:

p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]
