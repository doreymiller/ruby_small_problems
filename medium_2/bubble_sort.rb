# bubble_sort.rb

# Write a method that takes an Array as an argument, and sorts that Array using
# the bubble sort algorithm as just described. Note that your sort will be
# "in-place"; that is, you will mutate the Array passed as an argument. You may
# assume that the Array contains at least 2 elements.

# input - array
# output - the same array sorted from lowest to highest

# algorithm
# initialize sorted variable to false
# use while !sorted
# set sorted = true
# loop through the array with each index and compare element at index and index
# + 1.  swap places if higher index is of lower value.  if performing swap, set
# sorted to false.
# return array

def bubble_sort!(array)
  loop do
    sorted = true
    array.each_index do |index|
      if (array[index] <=> array[index + 1]) == 1
        array[index], array[index + 1] = array[index + 1], array[index]
        sorted = false
      end
    end
    break if sorted
  end
  array
end

# Examples

array = [5, 3]
bubble_sort!(array)
puts array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
puts array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
puts array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
