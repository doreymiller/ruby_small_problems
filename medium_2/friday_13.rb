# friday_13.rb

# Write a method that returns the number of Friday the 13ths in the year given by
# an argument. You may assume that the year is greater than 1752 (when the
# United Kingdom adopted the modern Gregorian Calendar) and that it will remain
# in use for the foreseeable future.

# input - year number
# output - number of friday the 13ths that occur in that year

# algorithm
# initialize num_fri_13 variable to 0
# loop through 12 times and using the Date class, see if the 13th day of the
# month is a friday...if so, incremenet the num_fri_13 variable by 1.
# return the num_fri_13 variable

require 'date'

def friday_13th(year)
  num_fri_13 = 0
  current_month = 1
  while current_month < 13
    current_date = Date.new(year, current_month, 13)
    num_fri_13 += 1 if current_date.friday?
    current_month += 1
  end
  num_fri_13
end

# Examples:

puts friday_13th(2015) == 3
puts friday_13th(1986) == 1
puts friday_13th(2019) == 2
