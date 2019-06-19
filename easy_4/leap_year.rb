# leap_year.rb

# In the modern era under the Gregorian Calendar, leap years occur in every 
# year that is evenly divisible by 4, unless the year is also divisible by 100. 
# If the year is evenly divisible by 100, then it is not a leap year unless the 
# year is evenly divisible by 400.

# Assume this rule is good for any year greater than year 0. Write a method that 
# takes any year greater than 0 as input, and returns true if the year is a leap 
# year, or false if it is not a leap year.

# input - year greater than 0
# output - boolean (true if leap year, false if not)

# rules - must be year greater than 0

# algorithm
# => leap_year? method takes year as input.  Initialize leap variable to
# => false.  
# => if year % 4 == 0 set leap variable = true.  
# => Nest if year % 100 == 0 && year % 400 != 0, then set leap = false.  

def leap_year?(year)
  leap = false
  if year % 4 == 0
    leap = true
    if year % 100 == 0 && year % 400 != 0
      leap = false
    end
  end
  leap
end

puts leap_year?(2016) == true
puts leap_year?(2015) == false
puts leap_year?(2100) == false
puts leap_year?(2400) == true
puts leap_year?(240000) == true
puts leap_year?(240001) == false
puts leap_year?(2000) == true
puts leap_year?(1900) == false
puts leap_year?(1752) == true
puts leap_year?(1700) == false
puts leap_year?(1) == false
puts leap_year?(100) == false
puts leap_year?(400) == true