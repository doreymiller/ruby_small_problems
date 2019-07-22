# diamonds.rb

# Write a method that displays a 4-pointed diamond in an n x n grid, where n is
# an odd integer that is supplied as an argument to the method. You may assume
# that the argument will always be an odd integer.

# input - an odd integer
# output - print a 4-pointed diamond in an n x n grid

# algorithm
# set num_stars to 1
# set direction = 1
# loop through 1.upto n times 
# set num_spaces to (n - num_stars) / 2
# print line with the string (" " * num_spaces) + ("*" * num_stars)
# if num_stars == n set direction to -1
# num_stars += direction * 2
# end loop

# --- my solution
# def diamond(size)
#   num_stars = 1
#   direction = 1
  
#   1.upto(size) do
#     num_spaces = (size - num_stars) / 2
#     puts (" " * num_spaces) + ("*" * num_stars)
#     direction = -1 if num_stars == size
#     num_stars += direction * 2
#   end
# end

def print_row(grid_size, distance_from_center)
  num_stars = grid_size - (distance_from_center * 2)
  stars = ("*" * num_stars)
  puts stars.center(grid_size)
end

def print_outline_row(grid_size, distance_from_center)
  #puts distance_from_center
  shape_width = grid_size - (distance_from_center * 2)
  if shape_width > 1 
    num_spaces = shape_width - 2
    shape_str = "*" + (" " * num_spaces) + "*"
  else
    shape_str = "*"
  end
  puts shape_str.center(grid_size)
end

def diamond(grid_size)
  max_distance = grid_size / 2
  max_distance.downto(0) { |distance| print_row(grid_size, distance) }
  1.upto(max_distance) { |distance| print_row(grid_size, distance) }
end

def diamond_outline(grid_size)
  max_distance = grid_size / 2
  max_distance.downto(0) { |distance| print_outline_row(grid_size, distance) }
  1.upto(max_distance) { |distance| print_outline_row(grid_size, distance) }
  puts "\n"
end



diamond(1)
diamond(3)
diamond(5)
diamond(9)

diamond_outline(1)
diamond_outline(3)
diamond_outline(5)
diamond_outline(9)
diamond_outline(11)
diamond_outline(13)