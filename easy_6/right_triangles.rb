# right_triangles.rb

# Write a method that takes a positive integer, n, as an argument, and displays
# a right triangle whose sides each have n stars. The hypotenuse of the triangle
# (the diagonal side in the images below) should have one end at the lower-left
# of the triangle, and the other end at the upper-right.

# input - positive integer
# output - print a right triangle using stars where the hypotenuse of the 
# triangle goes from lower left to upper right

# algorithm
# num = input param
# initialize current_line = 1
# loop num times, 
#   display a string made of " " * num - current_line and '*' * current_line
#   increment current_line += 1
# end

# --- my solution
# def triangle(num)
#   current_line = 1

#   num.times do 
#     puts (" " * (num - current_line)) << ("*" * current_line)
#     current_line += 1
#   end
# end

# --- ls solution
def triangle(num, reverse)
  stars = 1
  spaces = num - 1
  
  num.times do 
    print_row(stars, spaces, reverse)
    stars += 1
    spaces -= 1
  end
end

def upside_down_triangle(num, reverse)
  stars = num
  spaces = 0
  
  num.times do 
    print_row(stars, spaces, reverse)
    stars -= 1
    spaces += 1
  end
end

def print_row(num_stars, num_spaces, reverse)
  if reverse
      puts ("*" * num_stars)
    else
      puts (" " * num_spaces) + ("*" * num_stars)
   end
end

def mod_triangle(num, angle_corner)
  reverse = angle_corner.include?("left")
  if angle_corner.include?("upper")
    upside_down_triangle(num, reverse)
  else
    triangle(num, reverse)
  end
end



# triangle(5)
# upside_down_triangle(5)
mod_triangle(5, "upper_left")
mod_triangle(5, "upper_right")
mod_triangle(5, "lower_left")
mod_triangle(5, "lower_right")