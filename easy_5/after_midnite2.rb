# after_midnite2.rb

# As seen in the previous exercise, the time of day can be represented as the 
# number of minutes before or after midnight. If the number of minutes is 
# positive, the time is after midnight. If the number of minutes is negative, 
# the time is before midnight.

# Write two methods that each take a time of day in 24 hour format, and 
# return the number of minutes before and after midnight, respectively. 
# Both methods should return a value in the range 0..1439.

# You may not use ruby's Date and Time methods.

# Examples:

# after_midnight('00:00') == 0
# before_midnight('00:00') == 0
# after_midnight('12:34') == 754
# before_midnight('12:34') == 686
# after_midnight('24:00') == 0
# before_midnight('24:00') == 0

# input - string in 'hh:dd' format
# output - integer

# rules - cannot use Date and Time methods.  both methods should return a value
# => in the range of 0..1439.

# algorithm
# => initialize constants.  MINUTES_PER_HOUR = 60.  HOURS_PER_DAY = 24.
# => MINUTES_PER_DAY = MINUTES_PER_HOUR * HOURS_PER_DAY 
# => subroutine hours_minutes_array(str_time)
# =>   split the string using ":" delimiter.  return array.
# => subroutine sum_minutes(arr_time) 
# =>   str_time[0] * MINUTES_PER_HOUR + str_time[1].
# => def after_midnight(str_time)  
# =>   arr = hrs_mins_array(str_time).
# =>   total_minutes = sum_minutes(arr_time).
# => def before_midnight(str_time) 
# =>   arr = hrs_mins_array(str_time)
# =>   total_minutes = MINUTES_PER_DAY - sum_minutes(arr_time)


MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = MINUTES_PER_HOUR * HOURS_PER_DAY


# --- my solution
# def hrs_mins_array(str_time)
#   arr_time = str_time.split(":").map { |time| time.to_i }
# end

# def sum_minutes(arr_time)
#   arr_time[0] * MINUTES_PER_HOUR + arr_time[1]
# end

# def after_midnight(str_time)
#   arr_time = hrs_mins_array(str_time)
#   s = sum_minutes(arr_time)
#   return 0 if s == MINUTES_PER_DAY
#   s
# end

# def before_midnight(str_time)
#   arr_time = hrs_mins_array(str_time)
#   s = sum_minutes(arr_time)
#   return 0 if s == 0
#   MINUTES_PER_DAY - s
# end

def after_midnight(str_time)
  arr_time = str_time.split(":").map { |time| time.to_i }
  (arr_time[0] * MINUTES_PER_HOUR + arr_time[1]) % MINUTES_PER_DAY
end

def before_midnight(str_time)
  delta_minutes = MINUTES_PER_DAY - after_midnight(str_time)
  delta_minutes = 0 if delta_minutes == MINUTES_PER_DAY
  delta_minutes
end


puts after_midnight('00:00') == 0
puts before_midnight('00:00') == 0
puts after_midnight('12:34') == 754
puts before_midnight('12:34') == 686
puts after_midnight('24:00') == 0
puts before_midnight('24:00') == 0

