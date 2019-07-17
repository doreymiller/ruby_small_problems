# find_dup.rb

# Given an unordered array and the information that exactly one value in the
# array occurs twice (every other value occurs exactly once), how would you
# determine which value occurs twice? Write a method that will find and return
# the duplicate value that is known to be in the array.

# input - array of values with exactly one value duplicated in the array
# output - value of duplicate

# algorithm - 
# initialize result_count = 0, result = nil
# use an until result_count == arr.size loop
# compare the value of arr[result_count] with each value of the remaining
# elements of the array using slice to create a test_array
# if the arr[result_count] == val then set result = arr[result_count] and
# break from loop.  increment result_count += 1

def find_dup(arr)
  result_count = 0
  result = nil
  
  until result_count == arr.size
    test_array = arr.slice(result_count + 1, arr.size - result_count)
    
    if test_array.include?(arr[result_count])
      result =  arr[result_count]
      break
    end
    
    result_count += 1
  end
  
  result
end

# Examples:

puts find_dup([1, 5, 3, 1]) == 1
puts find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
          38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
          14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
          78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
          89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
          41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
          55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
          85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
          40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
          7,  34, 57, 74, 45, 11, 88, 67,  5, 58]) == 73
          
