# sign_num_to_str.rb

# In the previous exercise, you developed a method that converts non-negative 
# numbers to strings. In this exercise, you're going to extend that method by 
# adding the ability to represent negative numbers as well.

# Write a method that takes an integer, and converts it to a string 
# representation.

# You may not use any of the standard conversion methods available in 
# Ruby, such as Integer#to_s, String(), Kernel#format, etc. You may, 
# however, use integer_to_string from the previous exercise.

# Examples

# signed_integer_to_string(4321) == '+4321'
# signed_integer_to_string(-123) == '-123'
# signed_integer_to_string(0) == '0'

# input - an integer
# output - a string

# rules - cannot use #to_s, String(), #format, etc.  

NUM_LIST = { 0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5', 
            6 => '6', 7 => '7', 8 => '8', 9 => '9' }
            

def integer_to_string(int) 
  result = ''
  loop do
    int, remainder = int.divmod(10)
    result.prepend(NUM_LIST[remainder])
    break if int == 0
  end
  result
end

#---my solution
def signed_integer_to_string(int)
  new_str = integer_to_string(int.abs)
  if int > 0 
    new_str.prepend('+')
  elsif int < 0
    new_str.prepend('-')
  end
  new_str
end

#---ls solution
def signed_integer_to_string2(number)
  case number <=> 0
  when -1 then "-#{integer_to_string(-number)}"
  when +1 then "+#{integer_to_string(number)}"
  else         integer_to_string(number)
  end
end


def signed_integer_to_string3(number)
  modifier = ""
  case number <=> 0
  when -1 then modifier = "-"
  when +1 then modifier = "+"
  end
  "#{modifier + integer_to_string(number.abs)}"
end


puts signed_integer_to_string3(4321) == '+4321'
puts signed_integer_to_string3(-123) == '-123'
puts signed_integer_to_string3(0) == '0'