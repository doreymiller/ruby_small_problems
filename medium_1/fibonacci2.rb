# fibonacci2.rb

# Rewrite your recursive fibonacci method so that it computes its results
# without recursion.



# --- my solution
# def fibonacci(n)
#   return 1 if n <= 2
#   list = [1, 1]
#   3.upto(n) do 
#     list << list[-2..-1].reduce(:+)
#   end
#   list.last  
# end

# --- ls solution
def fibonacci(n)
  first, last = [1, 1]
  3.upto(n) do 
    first, last =  [last, first + last]
  end
  last  
end


  
 

# Examples:

puts fibonacci(1) == 1
puts fibonacci(2) == 1
puts fibonacci(3) == 2
puts fibonacci(4) == 3
puts fibonacci(5) == 5
puts fibonacci(12) == 144
puts fibonacci(20) == 6765

# Examples:

puts fibonacci(20) == 6765
puts fibonacci(100) == 354224848179261915075
puts fibonacci(100_001) # => 4202692702.....8285979669707537501