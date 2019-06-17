# list of digits

# Write a method that takes one argument, a positive integer, and returns 
# a list of the digits in the number.

# input
# => positive integer
# output
# =>array of digits in the integer

# my solution ---------------
def list_of_digits(int)
  int.digits.reverse
end

p list_of_digits(5639)
# ----------------------------

def digit_list(int)
  digits = []
  loop do
    int, remainder = int.divmod(10)
    digits.unshift(remainder)
    break if int == 0
  end
  digits
end

p digit_list(5432)

def char_digit_list(int)
  int.to_s.chars.map { |char| char.to_i } 
end

p char_digit_list(1286)