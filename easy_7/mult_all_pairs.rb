# mult_all_pairs.rb

# Write a method that takes two Array arguments in which each Array contains a
# list of numbers, and returns a new Array that contains the product of every
# pair of numbers that can be formed between the elements of the two Arrays.
# The results should be sorted by increasing value.

# You may assume that neither argument is an empty Array.

# Examples:

# input - two arrays of numbers
# output - one new array with all of the products of the pairs between arrays
# sorted by increasing value

# algorithm
# initialize new results array
# iterate through arr1 and for each value
# iterate through arr2 and add the product of arr2 value and arr2 value to
# results array
# call array sort
# return array

def multiply_all_pairs(arr1, arr2)
  results = []
  arr1.each do |num1|
    arr2.each do |num2|
      results << num1 * num2
    end
  end
  results.sort
end

def multiply_all_pairs_compact(arr1, arr2)
  arr1.product(arr2).map { |num1, num2| num1 * num2 }.sort
end

puts multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
puts multiply_all_pairs_compact([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
