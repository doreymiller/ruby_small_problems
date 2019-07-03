# after_midnite.rb

# The time of day can be represented as the number of minutes before or after 
# midnight. If the number of minutes is positive, the time is after midnight. 
# If the number of minutes is negative, the time is before midnight.

# Write a method that takes a time using this minute-based format and returns 
# the time of day in 24 hour format (hh:mm). Your method should work with 
# any integer input.

# You may not use ruby's Date and Time classes.

# input - number
# output - string in time format (hh:mm)

# rules - if number is positive, time is calculated after midnight, if number
# is negative time is before midnight.

# --- my solution
# algorithm
# => define main routine time_of_day(num)
# => define subroutine num_to_hrs.  input number and divides by 60.  return is
# => number of hrs.  If hrs < 0, hrs = 12 - hrs. 
# => define subroutine num_to_min.  input number and mod 60.  return is number
# => of minutes.  If min < 0, min = 60 - min
# => define subroutine time_to_str.  convert input num param to_s.  If str.size <
# => 2, str.prepend "0"
# => concatenate "#{time_to_str(hrs)}:#{time_to_str(min)}"

# def time_of_day(num)
#   hrs = num_to_hrs(num)
#   min = num_to_min(num)
#   "#{time_to_str(hrs)}:#{time_to_str(min)}"
# end

# def num_to_hrs(num)
#   hrs = (num / 60) % 24
#   if hrs < 0
#     hrs = 24 + hrs
#   end
#   hrs
# end

# def num_to_min(num)
#   min = num % 60
# end

# def time_to_str(num)
#   str = num.to_s
#   if str.size < 2 
#     str.prepend("0")
#   end
#   str
# end

# --- ls solution
MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = MINUTES_PER_HOUR * HOURS_PER_DAY

def time_of_day(delta_minutes)
  delta_minutes = delta_minutes % MINUTES_PER_DAY
  hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
  format('%02d:%02d', hours, minutes)
end

puts time_of_day(0) == "00:00"
puts time_of_day(-3) == "23:57"
puts time_of_day(35) == "00:35"
puts time_of_day(-1437) == "00:03"
puts time_of_day(3000) == "02:00"
puts time_of_day(800) == "13:20"
puts time_of_day(-4231) == "01:29"



