# whats_my_bonus

# Write a method that takes two arguments, a positive integer and a boolean, 
# and calculates the bonus for a given salary. If the boolean is true, the 
# bonus should be half of the salary. If the boolean is false, the bonus 
# should be 0.

# Examples:

# puts calculate_bonus(2800, true) == 1400
# puts calculate_bonus(1000, false) == 0
# puts calculate_bonus(50000, true) == 25000
# The tests above should print true.

# input
# => a positive integer and a boolean
# output
# => an integer, if boolean is true then output integer is half of input integer
# => otherwise the output is 0

# abstraction
# => simple one line if true, num/2, else 0

def bonus(salary, bonus_bool)
  bonus_bool ? salary/2 : 0
end

puts bonus(12000, true)
puts bonus(50000, false)