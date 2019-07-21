# counting_up.rb

# Write a method that takes an integer argument, and returns an Array of all
# integers, in sequence, between 1 and the argument.

# You may assume that the argument will always be a valid integer that is
# greater than 0.

# input - integer greater than 0
# output - an array of all integers between and including  1 and input integer

def sequence(num)
  (1..num).to_a
end

def sequence_with_neg(num)
  num > 0 ? (1..num).to_a : (num..1).to_a
end

# Examples:

puts sequence(5) == [1, 2, 3, 4, 5]
puts sequence(3) == [1, 2, 3]
puts sequence(1) == [1]

p sequence_with_neg(-4)