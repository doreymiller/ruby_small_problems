# greeting.rb

# Write a program that will ask for user's name. The program will then greet 
# the user. If the user writes "name!" then the computer yells back to the user.

# Examples

# What is your name? Bob
# Hello Bob.
# What is your name? Bob!
# HELLO BOB. WHY ARE WE SCREAMING?

# input
# => a string
# outout
# => a string

# abstraction
# => prompt user for name.  store answer in name variable.  check to see if the
# => string includes a ! at the end.  If it doesn't, puts string answer 1, else 
# => remove the '!' from the name and puts string answer 2 in uppercase

def has_exclamation?(name)
  name.include?('!')
end

def print_response(exclamation, name)
  reply = ""
  if exclamation
    name.delete!('!')
    reply = "HELLO #{name.upcase!}.  WHY ARE WE SCREAMING?"
  else
    reply = "Hello #{name}."
  end
  puts reply
end

puts "What is your name?"
my_name = gets.chomp
print_response(has_exclamation?(my_name), my_name)



