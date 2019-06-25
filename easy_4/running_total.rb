# running_total.rb

# Write a method that takes an Array of numbers, and returns an Array with 
# the same number of elements, and each element has the running total from 
# the original Array.

# Examples:

# running_total([2, 5, 13]) == [2, 7, 20]
# running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
# running_total([3]) == [3]
# running_total([]) == []

# input - array of numbers
# output - new array with same number of elements, each element has the
# running total from the original array

# algorithm
# => initialize variable sum = 0.  create new sum_list empty array.
# => iterate through the input array with each_index and sum = sum + 
# => input_array[i].  push the new sum value to the sum_list array

# ---my first attempt
# def running_total(nums)
#   sum = 0
#   sum_list = []
#   nums.each_index do |i| 
#     sum += nums[i]
#     sum_list.push(sum)
#   end
#   sum_list
# end

# ---launch school solution using map
# def running_total(nums)
#   sum = 0
#   nums.map { |val| sum += val }
# end

# --- using each_with_object
# def running_total(nums)
#   sum = 0
#   nums.each_with_object([]) { |val, a| a << sum += val }
# end

# --- using inject
def running_total(nums)
  sum = 0
  nums.inject([]) { |a, val| a << sum += val }
end

puts running_total([2, 5, 13]) == [2, 7, 20]
puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total([3]) == [3]
puts running_total([]) == []