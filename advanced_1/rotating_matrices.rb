# rotating_matrices.rb

# Write a method that takes an arbitrary matrix and rotates it 90 degrees
# clockwise as shown above.

# input - array (matrix)
# output - array (matrix) where values are rotated 90 degrees clockwise

# algorithm
# create empty results array
# set variables num_rows =  matrix.size and num_columns = matrix.first.size
# loop through num_columns times and create a new row by using 
# (num_rows-1..0).map |row_index| matrix[column_index][row_index]
# add new_row to results
# return results

require 'pry'

def rotate90(matrix)
  results = []
  num_rows = matrix.size
  num_columns = matrix.first.size
  
  (0...num_columns).each do |column_index|
    new_row = (num_rows-1).downto(0).map do |row_index|
      matrix[row_index][column_index]
    end
    results << new_row
  end
  results
end

def rotate180(matrix)
  rotate90(rotate90(matrix))
end



# Examples

matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

new_matrix1 = rotate90(rotate90(matrix1))
new_matrix2 = rotate180(matrix1)
p new_matrix1 == new_matrix2

#new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

# p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
# p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
# p new_matrix3 == matrix2