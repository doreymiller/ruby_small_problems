# sum_of_sums.rb

# Write a method that takes an Array of numbers and then returns the sum of the
# sums of each leading subsequence for that Array. You may assume that the
# Array always contains at least one number.

# input - array of numbers
# output - a number, which is the sum of all of the sums of subsequences
# beginning with the first element in the array

# algorithm
# iterate through array using each_index
# take a slice of array from index 0 with length of current index + 1
# reduce array and add to sum
# return sum

def sum_of_sums(arr)
  sum = 0
  arr.each_index do |index|
    sum += arr.slice(0, index + 1).reduce(:+)
  end
  sum
end

# Examples:

puts sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
puts sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
puts sum_of_sums([4]) == 4
puts sum_of_sums([1, 2, 3, 4, 5]) == 35