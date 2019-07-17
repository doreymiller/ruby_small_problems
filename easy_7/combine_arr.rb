# combine_arr.rb

# Write a method that combines two Arrays passed in as arguments, and returns a
# new Array that contains all elements from both Array arguments, with the
# elements taken in alternation.

# You may assume that both input Arrays are non-empty, and that they have the
# same number of elements.

# input - two arrays with the same number of elements
# output - one array with elements from each array added in alteration

# algorithm
# initialize new empty results array and index variable = 0
# use a times loop using the size of the first array
# add arr1[index] and arr2[index] to results array
# return results array

def interleave(arr1, arr2)
  index = 0
  results = []
  arr1.size.times do
    results << arr1[index] << arr2[index]
    index += 1
  end
  results
end

def interleave_zip(arr1, arr2)
  results = arr1.zip(arr2)
  results.flatten
end

# Example:

puts interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
puts interleave_zip([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']