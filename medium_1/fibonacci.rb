# fibonacci.rb

# Write a recursive method that computes the nth Fibonacci number, where nth is
# an argument to the method.

# input - number
# output - number (the answer of the fibonacci number for nth input)

# algorithm


def fibonacci(n)
  
  return n if n == 1
  
  if n > 2 
    fibonacci(n-1) + fibonacci(n-2)
  else
    fibonacci(n-1)
  end
end
  
 

# Examples:

puts fibonacci(1) == 1
puts fibonacci(2) == 1
puts fibonacci(3) == 2
puts fibonacci(4) == 3
puts fibonacci(5) == 5
puts fibonacci(12) == 144
puts fibonacci(20) == 6765
