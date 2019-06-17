# how_many.rb

# Write a method that counts the number of occurrences of each element 
# in a given array.

# examples vehicles = [
#  'car', 'car', 'truck', 'car', 'SUV', 'truck',
#  'motorcycle', 'motorcycle', 'car', 'truck'
# ]
#
# count_occurrences(vehicles)
# The words in the array are case-sensitive: 'suv' != 'SUV'. ` Once counted, 
# print each element alongside the number of occurrences.
#
# Expected output:

# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2

# input
# =>an array of elements
# output
# => returns a hash with each element and occurrence count
# => print each hash key/value pair

# abstraction
# => In a loop, using the first element of the array, count how many other 
# elements in the array return true if == to the first element.  Add the 
# element and occurrence count as a key / value pair to a hash table.  Remove 
# all occurrences of the element from the original array.  Loop until input
# array size is 0.  Print each key/value pair from the hash table

require 'pry'

def count_occurrences(list)
  my_list = list
  my_hash = {}
  while my_list.size > 0
    first_element = my_list[0]
    element_count = my_list.count(first_element)
    my_hash[first_element] = element_count
    my_list.delete(first_element)
  end
  my_hash.each { |key, value| puts "#{key} => #{value}" }
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
 ]
 
count_occurrences(vehicles)
