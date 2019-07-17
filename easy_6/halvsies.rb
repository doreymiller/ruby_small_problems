# halvsies.rb

# Write a method that takes an Array as an argument, and returns two Arrays
# (as a pair of nested Arrays) that contain the first half and second half of
# the original Array, respectively. If the original array contains an odd number
# of elements, the middle element should be placed in the first half Array.

# input - an array
# a nested array that contains the original array divided in half between the
# two nested arrays (if odd, the middle element is put in the first array)

# algorithm
# initialize results array as empty nested array [[],[]]
# iterate through input array with each_with_index.
# If the index is less than half of the array size plus the remainder (size % 2)
# add to array[0], otherwise add to array[1]


# --- my solution
# def halvsies(arr)
#   results = [[], []]
#   cutoff = (arr.size / 2) + (arr.size % 2)
#   arr.each_with_index do |elem, ind|
#     ind < cutoff ? results[0] << elem : results[1] << elem
#   end
#   results
# end

# --- ls solution
def halvsies(arr)
  middle = (arr.size/2.0).ceil
  first = arr.slice(0, middle)
  second = arr.slice(middle, arr.size - middle)
  [first, second]
end

# Examples:

puts halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
puts halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
puts halvsies([5]) == [[5], []]
puts halvsies([]) == [[], []]