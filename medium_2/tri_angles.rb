# tri_angles.rb

# Write a method that takes the 3 angles of a triangle as arguments, and returns
# a symbol :right, :acute, :obtuse, or :invalid depending on whether the triangle
# is a right, acute, obtuse, or invalid triangle.

# You may assume integer valued angles so you don't have to worry about floating
# point errors. You may also assume that the arguments are specified in degrees.

# input - three integers that represent angles in desgrees
# output - symbol

# algorithm
# create an array of all the angles
# sort the array in ascending order
# using reduce, add all array values and if sum is not 180 then return :invalid
# else use a case statement with the last element of the array
# if it is equal to 90, return :right
# if it is greater than 90 return :obtuse
# if it is less than 90 return :acute

def triangle(angle1, angle2, angle3)
  angles = [angle1, angle2, angle3]
  angles.sort!

  case
  when angles.reduce(:+) < 180, angles.include?(0) then :invalid
  when angles.last == 90 then :right
  when angles.last > 90 then :obtuse
  when angles.last < 90 then :acute
  end
end

# Examples:

puts triangle(60, 70, 50) == :acute
puts triangle(30, 90, 60) == :right
puts triangle(120, 50, 10) == :obtuse
puts triangle(0, 90, 90) == :invalid
puts triangle(50, 50, 50) == :invalid
