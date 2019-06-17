# odd_numbers

# Print all odd numbers from 1 to 99, inclusive. All numbers should be 
# printed on separate lines.

# abstraction
# => Go through all the numbers in the range of 1 to 99 and if the number % 2
# => == 1 then puts the number

(1..99).each { |num| puts num if num % 2 == 1 }
