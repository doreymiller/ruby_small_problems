# name_swapping.rb

# Write a method that takes a first name, a space, and a last name passed as a
# single String argument, and returns a string that contains the last name, a
# comma, a space, and the first name.

# input - string that contains first name + space + last name
# output - string that contains last name + comma + first name

# algorithm
# split name into array
# return new string with array[1] + "," + array[0]

# --- my solution
# def swap_name(name)
#   name_arr = name.split(" ")
#   name_arr[1] + ", " + name_arr[0]
# end

# --- ls solution
def swap_name(name)
  name.split(" ").reverse.join(", ")
end

# Examples

puts swap_name('Joe Roberts') == 'Roberts, Joe'