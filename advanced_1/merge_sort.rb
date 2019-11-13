# merge_sort.rb

# Sort an array of passed in values using merge sort. You can assume that this
# array may contain only one type of data. And that data may be either all
# numbers or all strings.

# Merge sort is a recursive sorting algorithm that works by breaking down the
# array elements into nested sub-arrays, then recombining those nested sub-arrays
# in sorted order.

def merge_sort(arr)
  
  midpoint = arr.size/2
  sub_list_a = arr[0, midpoint]
  sub_list_b = arr[(midpoint + 1)..(arr.size - 1)]
  
  sub_list_a = merge_sort(sub_list_a) 
  sub_list_b = merge_sort(sub_list_b) 
  
  merge(sub_list_a, sub_list_b)
  
end



def merge(array1, array2)
  order = array1.empty? ? [array2, array1] : [array1, array2]
  results = order[0].map { |x| x }

  order[1].each do |a_value|
    results.each_with_index do |r_value, index|
      if r_value > a_value
        results.insert(index, a_value)
        break
      end
    end
  end

  results
end

# Examples:

puts merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
puts merge_sort([5, 3]) == [3, 5]
puts merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
puts merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
puts merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == 
[1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]