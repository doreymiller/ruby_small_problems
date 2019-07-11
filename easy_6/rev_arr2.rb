# rev_arr2.rb

# Write a method that takes an Array, and returns a new Array with the elements
# of the original list in reverse order. Do not modify the original list.

# You may not use Array#reverse or Array#reverse!, nor may you use the method
# you wrote in the previous exercise.

# input - array
# output - new array with elements reversed

# algorithm
# initialize empty new array
# initialize variable index = -1
# while index.abs <= arr.size
# add arr[index] to new array
# return new array

# --- my solution
def reverse(arr)
  new_arr = []
  index = -1
  
  while index.abs <= arr.size
    new_arr << arr[index]
    index -= 1
  end
  
  new_arr
end

# --- using each_with_object
def reverse(arr)
  arr.each_with_object([]) { |item, arr| arr.prepend(item) }
end

# Examples:

puts reverse([1,2,3,4]) == [4,3,2,1]          # => true
puts reverse(%w(a b e d c)) == %w(c d e b a)  # => true
puts reverse(['abc']) == ['abc']              # => true
puts reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
puts list.object_id != new_list.object_id  # => true
puts list == [1, 3, 2]                     # => true
puts new_list == [2, 3, 1]                 # => true
