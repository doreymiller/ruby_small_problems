# cute_angles.rb

# Write a method that takes a floating point number that represents an angle
# between 0 and 360 degrees and returns a String that represents that angle in
# degrees, minutes and seconds. You should use a degree symbol (°) to represent
# degrees, a single quote (') to represent minutes, and a double quote (") to
# represent seconds. A degree has 60 minutes, while a minute has 60 seconds.

# Examples:

# dms(30) == %(30°00'00")
# dms(76.73) == %(76°43'48")
# dms(254.6) == %(254°36'00")
# dms(93.034773) == %(93°02'05")
# dms(0) == %(0°00'00")
# dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
# Note: your results may differ slightly depending on how you round values, but
# should be within a second or two of the results shown.

# You should use two digit numbers with leading zeros when formatting the
# minutes and seconds, e.g., 321°03'07".

# You may use this constant to represent the degree symbol:
# DEGREE = "\xC2\xB0"

# input - floating point number that represents an angle
# output - string of conversion of input to degrees, minutes, and seconds 

DEGREE = "\xC2\xB0"
TOTAL_DEGREES = 360
DEGREES_IN_MINUTE = 60
DEGREES_IN_SECOND = 60

def dms (angle)
  degrees = angle.to_i
  minutes = (angle - degrees) * DEGREES_IN_MINUTE
  seconds = (minutes - minutes.to_i) * DEGREES_IN_SECOND
  if degrees >= 0 
    degrees = degrees % TOTAL_DEGREES
  else
    degrees = TOTAL_DEGREES - (degrees % TOTAL_DEGREES)
  end
  # results = 
  #   "#{degrees}#{DEGREE}#{format('%02d', minutes)}'#{format('%02d', seconds)}\""
  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end

puts dms(30)
puts dms(76.73)
puts dms(254.6)
puts dms(93.034773)
puts dms(0)
puts dms(360)
puts dms(420)
puts dms(-420)
# Note: your results may differ slightly depending on how you round values, but
# should be within a second or two of the results shown. 