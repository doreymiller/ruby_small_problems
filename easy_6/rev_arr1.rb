# rev_arr1.rb

# Write a method that takes an Array as an argument, and reverses its elements
# in place; that is, mutate the Array passed into this method. The return value
# should be the same Array object.

# You may not use Array#reverse or Array#reverse!.

# input - array
# output - same array but with elements reversed

# algorithm
# initialize a count variable to 0.  
# iterate through the array and swap index assignments using: 
# arr[count], arr[-(count + 1)] = arr[-(count + 1)], arr[count]
# increment count
# break if count == arr.size/2
# return original array

def reverse!(arr)
  count = 0
  return arr if arr.size == 0
  loop do
    arr[count], arr[-(count + 1)] = arr[-(count + 1)], arr[count]
    count += 1
    break if count == arr.size/2
  end
  arr
end

# Examples:

list = [1,2,3,4]
result = reverse!(list)
puts result == [4, 3, 2, 1]
puts list == [4, 3, 2, 1]
puts list.object_id == result.object_id

list = %w(a b e d c)
puts reverse!(list) == ["c", "d", "e", "b", "a"]
puts list == ["c", "d", "e", "b", "a"]

list = ['abc']
puts reverse!(list) == ["abc"]
puts list == ["abc"]

list = []
puts reverse!(list) == []
puts list == []