# seeing_stars.rb

# Write a method that displays an 8-pointed star in an nxn grid, where n is an
# odd integer that is supplied as an argument to the method. The smallest such
# star you need to handle is a 7x7 grid.

# input - a number
# output - a string

# algorithm
# create a string of "*" repeated num times in an array
# initialize spaces variable = 0
# loop through num-1 / 2 times
# add elements to beginning and end of array that are strings consisting of
# (num - 3 - spaces)/2 * " " + "*" * 3 + (num - 3 - spaces)/2 * " "
# print joined string with "\n"

require 'pry'

STARS_PER_LINE = 3

def end_spaces(num, middle_chars)
  return "" if num - middle_chars < 1
  " " * ((num - middle_chars)/2)
end

# def middle_stars(spaces)
#   str = ("*" + (" " * spaces)) * 2 + "*"
# end

def star(num)
  star_arr = ["*" * num]
  spaces = 0
  ((num - 1)/2).times do
    middle = ("*" + (" " * spaces)) * 2 + "*"
    end_str = end_spaces(num, middle.length)
    next_line = end_str + middle
    star_arr.prepend(next_line)
    star_arr.push(next_line)
    spaces += 1
  end
  puts star_arr.join("\n")
end

star(7)
star(9)
star(15)

