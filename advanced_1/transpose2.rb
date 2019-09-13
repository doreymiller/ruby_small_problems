# transpose.rb

# input - an array of arrays
# output - a new array of arrays with the original 'transposed'

# algorithm - 
# input - array matrix
# output - array matrix
# 


# --- my solution
def transpose(matrix)
  trans_a = Array.new(matrix[0].length){Array.new(matrix.length)}
   
  matrix.each_index do |outer|
   matrix[outer].each_index do |index|
      trans_a[index][outer] = matrix[outer][index]
    end
  end
  
  trans_a
end


puts transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
puts transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
puts transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
puts transpose([[1]]) == [[1]]

