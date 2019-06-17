# retire.rb

# Build a program that displays when the user will retire and how many years 
# she has to work till retirement.

# Example:

# What is your age? 30
# At what age would you like to retire? 70

# It's 2016. You will retire in 2056.
# You have only 40 years of work to go!

# input
# => prompt for strings current age and retirement age
# output
# => print out a string including the current year, the year you retire, and
# => the number of years you have until you retire

# abstraction
# => prompt user for current age.  Store in variable.  Prompt user for 
# => retirement age.  Store in variable.  Convert input to integers and 
# => calculate number of years until retirement.  Calculate retirement year
# => by adding number of years until retirement to current year.  Print out 
# => results with current year, retirement year, and number of years to go



def years_left(age, ret_age)
  ret_age - age
end

def ret_year(years, current)
  current_year + years
end

current_year = Time.now.year

puts "What is your age? "
my_age = gets.chomp
puts "At what age would you like to retire? "
my_ret_age = gets.chomp

my_years = years_left(my_age.to_i, my_ret_age.to_i)

puts "It's #{current_year}. You will retire in #{current_year + my_years}."
puts "You only have #{my_years} left to go!"


