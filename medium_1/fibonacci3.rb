# fibonacci3.rb

# In this exercise, you are going to compute a method that returns
# the last digit of the nth Fibonacci number.


# --- ls solution
def fibonacci(n)
  first, last = [1, 1]
  3.upto(n) do 
    first, last =  [last, first + last]
  end
  last.to_s[-1].to_i  
end

# --- further exploration
def fibonacci_last(nth)
  last_2 = [1, 1]
  nth = nth % 60  # fibonacci last digit repeats every 60th
  3.upto(nth) do
    last_2 = [last_2.last, (last_2.first + last_2.last) % 10]
    p last_2
  end

  last_2.last
end

#fibonacci_last(20)
#fibonacci_last(123_456_789_987_745)
fibonacci_last(100_001)
p fibonacci(100_001)

# Examples:

# puts fibonacci(1) # == 1
# puts fibonacci(2) # == 1
# puts fibonacci(3) # == 2
# puts fibonacci(4) # == 3
# puts fibonacci(5) # == 5
# puts fibonacci(12) # == 144
# puts fibonacci(20) # == 6765

# Examples:

# puts fibonacci(40)
# puts fibonacci(20) # ==  6765
# puts fibonacci(100) # == 354224848179261915075
# puts fibonacci(100_001) # => 4202692702.....8285979669707537501