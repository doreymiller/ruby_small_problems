# transpose.rb

# input - an array of arrays
# output - a new array of arrays with the original 'transposed'

# algorithm - 
# initialize new array a = Array.new[3][3]

# using 0.upto(array.length-1) do |array_num|
# inner loop 0.upto(array.length-1) do |index|
# set a[index][array_num] = matrix[array_num][index]

# --- my solution
# def transpose(matrix)
#   trans_a = Array.new(3){Array.new(3)}
  
#   0.upto(matrix.length-1) do |array_num|
#     0.upto(matrix.length-1) do |index|
#       trans_a[index][array_num] = matrix[array_num][index]
#     end
#   end
  
#   trans_a
# end

# --- ls solution
def transpose(matrix)
  result = []
  (0..2).each do |column_index|
    new_row = (0..2).map { |row_index| matrix[row_index][column_index] }
    result << new_row
  end
  result
end

def transpose!(matrix)
  
  0.upto(matrix.length - 1) do |array_num|
    array_num.upto(matrix.length - 1) do |index|
      matrix[array_num][index], matrix[index][array_num] =
      matrix[index][array_num], matrix[array_num][index]
    end
  end
  p matrix
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose!(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]

