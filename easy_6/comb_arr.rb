# comb_arr.rb

# Write a method that takes two Arrays as arguments, and returns an Array that
# contains all of the values from the argument Arrays. There should be no
# duplication of values in the returned Array, even if there are duplicates in
# the original Arrays.



# input - two arrays
# output - one array that contains all of the values of the original arrays
# without any duplicates

# algorithm
# iterate through the second array and add that value to the first array if
# the first array does not include that value

def merge(arr1, arr2)
  arr1.concat(arr2).uniq!
end

# Example

puts merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]