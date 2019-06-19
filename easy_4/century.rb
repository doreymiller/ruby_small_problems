# century_rb

# Write a method that takes a year as input and returns the century. The 
# return value should be a string that begins with the century number, and 
# ends with st, nd, rd, or th as appropriate for that number.

# New centuries begin in years that end with 01. So, the years 1901-2000 
# comprise the 20th century.

# Examples:

# century(2000) == '20th'
# century(2001) == '21st'
# century(1965) == '20th'
# century(256) == '3rd'
# century(5) == '1st'
# century(10103) == '102nd'
# century(1052) == '11th'
# century(1127) == '12th'
# century(11201) == '113th'

# input => integer year
# output => string that begins with century number and ends with st, nd, rd or
# => th as appropriate for number

# rules
# => century begins in years that end with 01

# algorithm
# => define method year_to_century to take a year number input and output a
# => number century.
# =>   - add 100 to year parameter, then divide by 100 to get the century number
# => define method century_to_string to take century number and output string
# => with number and century suffix.
# =>   - convert number to string.  if last two chars of number are 11, 12, or 
# =>   - 13,  add 'th' to the end of the string, else use case statement for
# =>   - remaining suffixes

def century(year)
  century_num = year_to_century(year)
  century_to_string(century_num)
end

def year_to_century(year)
  (year + 99)/100 
end

def century_to_string(century)
  cstr = century.to_s
  if ('11'..'13').include?(cstr[cstr.size - 2, 2])
    return cstr << 'th'
  end
  case cstr[cstr.size - 1]
  when '1'
    cstr << 'st'
  when '2'
    cstr << 'nd'
  when '3'
    cstr << 'rd'
  else
    cstr << 'th'
  end
end
    


puts century(2000) == '20th'
puts century(2001) == '21st'
puts century(1965) == '20th'
puts century(256) == '3rd'
puts century(5) == '1st'
puts century(10103) == '102nd'
puts century(1052) == '11th'
puts century(1127) == '12th'
puts century(11201) == '113th'