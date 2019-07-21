# fizzbuzz.rb

# Write a method that takes two arguments: the first is the starting number,
# and the second is the ending number. Print out all numbers between the two
# numbers, except if a number is divisible by 3, print "Fizz", if a number is
# divisible by 5, print "Buzz", and finally if a number is divisible by 3 and
# 5, print "FizzBuzz".

# input - two numbers
# output - print out all the numbers between (and including) the two.  if 
# number is divisible by 3, print "Fizz" instead, if divisible by 5 print "Fuzz"
# instead, and if divisible by both 3 and 5 print "Fizzbuzz" instead

# algorithm
# loop through range
# initialize empty string answer = ""
# use if statement -- if num % 3 == 0 then answer << "Fizz"
# elsif num % 5 == 0 then answer << "Buzz"
# else answer << num.to_s
# puts answer
# end loop

def fizzbuzz(num1, num2)
  answer = []
  index = 0
  (num1..num2).to_a.each do |num|
    answer[index] = ""
    answer[index] << "Fizz" if num % 3 == 0
    answer[index] << "Buzz" if num % 5 == 0
    answer[index] << num.to_s if num % 3 !=0 && num % 5 != 0 
    index += 1
  end
  puts answer.join(", ")
end


# Example:

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13,
# 14, FizzBuzz


