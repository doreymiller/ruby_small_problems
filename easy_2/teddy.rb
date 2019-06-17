# teddy.rb

# Build a program that randomly generates and prints Teddy's age. To get 
# the age, you should generate a random number between 20 and 200.

# Example Output

# Teddy is 69 years old!

# input
# => generate a random number between 20 and 200
# output
# => print out a string that includes Teddy's generated age

# abstraction
# => set Teddy's age as a sample a number from the range 20 to 200.  Then 
# => print out a string that includes Teddy's age

def random_age
  rand(20...200)
end

def prompt_name
  puts "Please enter your name: "
end

def retrieve_name
  ans = gets.chomp
  ans == "" ? "Teddy" : ans
end

def print_str(int, name)
  puts "#{name} is #{int} years old!"
end

prompt_name()
my_name = retrieve_name()
print_str(random_age, my_name)