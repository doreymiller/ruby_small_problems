# repeat_yourself.rb

# input
  # - string and positive integer (str, int)
# output
  # - string printed int times
  
def repeat(str, int)
  int.times { puts str }
end

repeat('Hello', 5)