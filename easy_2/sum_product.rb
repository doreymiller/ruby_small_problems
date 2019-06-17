# sum_product.rb

# Write a program that asks the user to enter an integer greater than 0, then 
# asks if the user wants to determine the sum or product of all numbers between 
# 1 and the entered integer.

# Examples:

# >> Please enter an integer greater than 0:
# 5
# >> Enter 's' to compute the sum, 'p' to compute the product.
# s
# The sum of the integers between 1 and 5 is 15.


# >> Please enter an integer greater than 0:
# 6
# >> Enter 's' to compute the sum, 'p' to compute the product.
# p
# The product of the integers between 1 and 6 is 720.

# input
# => an integer greater than 0
# => a string, either 's' or 'p'
# output
# => a number
# => a string to print outcome

# abstraction
# => prompt user for integer greater than 0.  Store response in variable.  
# => prompt user for string 's' or 'p' (for sum or product).  If 's', calculate
# => the sum of all numbers between 1 and the input number, if 'p', calculate
# => the product of all of the numbers between 1 and input number.  Print out
# => results

def compute_sum(int)
  sum = 0
  (1..int).each { |num| sum += num }
  sum
end

def compute_product(int)
  product = 1
  (1..int).each { |num| product *= num }
  product
end

def print_sum(int, sum)
  puts "The sum of all numbers between 1 and #{int} is #{sum}"
end

def print_product(int, product)
  puts "The product of all numbers between 1 and #{int} is #{product}"
end

def valid_int?(int)
  int.kind_of?(Integer) && int > 0 
end

def valid_operation?(operation)
  operation.downcase == 's' || operation.downcase == 'p'
end

def print_results(num, operator)
  if operator == 's'
    print_sum(num, compute_sum(num))
  elsif operator == 'p'
    print_product(num, compute_product(num))
  end
end


loop do
  my_num = nil
  loop do
    puts "=>Please enter an integer greater than 0:"
    my_num = gets.chomp.to_i
    if valid_int?(my_num)
      break
    else
      puts "=>Invalid input."
    end
  end
  my_operator = ''
  loop do
    puts "Enter 's' to compute the sum, 'p' to computer the product."
    my_operator = gets.chomp.downcase
    if valid_operation?(my_operator)
      break
    else
      puts "=>Invalid input."
    end
  end
  print_results(my_num, my_operator)
  repeat = true
  loop do
    puts "Would you like to try again? Enter 'y' or 'n':"
    ans = gets.chomp.downcase
    if ans == 'n'
      repeat = false
      break
    elsif ans == 'y'
      break
    else
      puts "=>Invalid input."
    end
  end
  break if !repeat
end

puts "Thanks and have a great day!"