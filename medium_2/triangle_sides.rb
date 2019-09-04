# triangle_sides.rb

# Write a method that takes the lengths of the 3 sides of a triangle as
# arguments, and returns a symbol :equilateral, :isosceles, :scalene, or
# :invalid depending on whether the triangle is equilateral, isosceles, scalene,
# or invalid.

# input - 3 numbers
# output - symbol

# algorithm
# create an array of the parameters of the triangle method
# if the array contains a '0', return :invalid
# sort array by ascending.  if the first two elements of the array added up are
# not greater than the third element, then return :invalid
# use a case statement to determind what type of triangle.

def triangle(side1, side2, side3)
  sides = [side1, side2, side3]
  sides.sort!
  return :invalid if sides.include?(0) || sides[0] + sides[1] < sides[2]
  sides_uniq = sides.uniq
  case sides_uniq.length
  when 1 then return :equilateral
  when 2 then return :isosceles
  when 3 then return :scalene
  end
end

# Examples:

puts triangle(3, 3, 3) == :equilateral
puts triangle(3, 3, 1.5) == :isosceles
puts triangle(3, 4, 5) == :scalene
puts triangle(0, 3, 3) == :invalid
puts triangle(3, 1, 1) == :invalid
