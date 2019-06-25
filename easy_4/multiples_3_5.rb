# multiples_3_5.rb

#Write a method that searches for all multiples of 3 or 5 that lie between 
# 1 and some other number, and then computes the sum of those multiples. For 
# instance, if the supplied number is 20, the result should be 
# 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

# You may assume that the number passed in is an integer greater than 1.

# Examples

# multisum(3) == 3
# multisum(5) == 8
# multisum(10) == 33
# multisum(1000) == 234168

# input - a number
# output - a number, which is the sum of the multiples of 3 and 5 for the 
# input number

# rules
# => you may assume that the number passed in is an integer greater than 1

# algorithm
# => using a range
# => from 1 to n (input parameter), find all the numbers that match n % 3 == 0,
# => or that match n % 5 == 0. Then use Enumerable.reduce to calculate 
# => the sum of the array items.  Return sum

def multisum(num)
  mults = (1..num).find_all { |num| num % 3 == 0 || num % 5 == 0 }
  total = mults.reduce(:+)
end


puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168