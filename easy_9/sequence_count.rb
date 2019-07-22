# sequence_count.rb

# Create a method that takes two integers as arguments. The first argument is a
# count, and the second is the first number of a sequence that your method will
# create. The method should return an Array that contains the same number of
# elements as the count argument, while the values of each element will be
# multiples of the starting number.

# You may assume that the count argument will always have a value of 0 or greater,
# while the starting number can be any integer value. If the count is 0, an empty
# list should be returned.

# input - two numbers (num1 is a count, num2 is the first number of the sequence)
# output - an array of num1 numbers, where each element is a multiple of num2

# algorithm
# initialize new empty array results = [], count = 1
# for num1 times do
# add num1 * count to the results array, increment count by 1
# return array

# ---my solution
# def sequence(num1, num2)
#   results = []
#   count = 1
  
#   num1.times do
#     results << num2 * count
#     count += 1
#   end
  
#   results
# end

# ---ls solution
def sequence(num1, num2)
  (1..num1).map { |index| index * num2 }
end



# Examples:

puts sequence(5, 1) == [1, 2, 3, 4, 5]
puts sequence(4, -7) == [-7, -14, -21, -28]
puts sequence(3, 0) == [0, 0, 0]
puts sequence(0, 1000000) == []
