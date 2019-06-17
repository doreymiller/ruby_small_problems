# how_big_room.rb

# Build a program that asks a user for the length and width of a room in meters 
# and then displays the area of the room in both square meters and square feet.

# Note: 1 square meter == 10.7639 square feet

# Do not worry about validating the input at this time.

# Example Run

# Enter the length of the room in meters:
# 10
# Enter the width of the room in meters:
# 7
# The area of the room is 70.0 square meters (753.47 square feet).

# input 
# => a number for length and a number for width
# output
# => a string that includes the calculated square meters

# abstraction
# => prompt the user for length of room in meters.  store length in variable.
# => prompt the user for width of room in meters.  store width in variable.
# => calculate the area of the room in sq meters.  convert square meters to 
# => square feet.  output string using sq meters and sq feet.

SQ_METERS_TO_SQ_FEET = 10.7639

def prompt(msg)
  puts "=> " + msg
end

def retrieve_amt
  amt = gets.chomp
end

def calculate_sq_meters(length, width)
  length * width
end

def calculate_sq_feet_from_meters(meters)
  meters * SQ_METERS_TO_SQ_FEET
end

def print_results(meters, feet)
  prompt("The area of the room is #{meters} square meters and #{feet} square 
  feet.")
end


prompt("Enter the length of the room in meters: ")
my_length = retrieve_amt()
prompt("Enter the width of the room in meters: ")
my_width = retrieve_amt()
area_meters = calculate_sq_meters(my_length.to_f, my_width.to_f)
area_feet = calculate_sq_feet_from_meters(area_meters).round(2)
print_results(area_meters, area_feet)