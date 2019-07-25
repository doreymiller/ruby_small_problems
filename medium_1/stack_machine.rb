# stack_machine.rb

# Write a method that implements a miniature stack-and-register-based programming
# language that has the following commands:

# n Place a value n in the "register". Do not modify the stack.
# PUSH Push the register value on to the stack. Leave the value in the register.
# ADD Pops a value from the stack and adds it to the register value, storing the
# result in the register.
# SUB Pops a value from the stack and subtracts it from the register value,
# storing the result in the register.
# MULT Pops a value from the stack and multiplies it by the register value,
# storing the result in the register.
# DIV Pops a value from the stack and divides it into the register value,
# storing the integer result in the register.
# MOD Pops a value from the stack and divides it into the register value,
# storing the integer remainder of the division in the register.
# POP Remove the topmost item from the stack and place in register
# PRINT Print the register value
# All operations are integer operations (which is only important with DIV
# and MOD).

# Programs will be supplied to your language method via a string passed in as an
# argument. Your program may assume that all programs are correct programs; that
# is, they won't do anything like try to pop a non-existent value from the
# stack, and they won't contain unknown tokens.

# You should initialize the register to 0.

# input - string containing a combination of numbers and commands
# output - a number

# algorithm
# main method - minilang
# initialize orders array from splitting input array
# initialize register = 0
# loop through orders array with each |command|
# use case statement to find out what to do with command


def minilang(commands)
  orders = commands.split(' ')
  register = 0
  stack = []
  
  orders.each do |command|
    case command
    when command.to_i.to_s then register = command.to_i
    when 'PUSH' then stack << register
    when 'ADD' then register += stack.pop
    when 'SUB' then register -= stack.pop
    when 'MULT' then register *= stack.pop
    when 'DIV' then register /= stack.pop
    when 'MOD' then register %= stack.pop
    when 'POP' then register = stack.pop
    when 'PRINT' then puts register
    end
  end
  
  p stack
  p register
end




# Examples:

minilang('PRINT')
# # 0

minilang('5 PUSH 3 MULT PRINT')
# # 15

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# # 5
# # 3
# # 8

minilang('5 PUSH POP PRINT')
# # 5

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# # 5
# # 10
# # 4
# # 7

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# # 6

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# # 12

minilang('-3 PUSH 5 SUB PRINT')
# # 8

minilang('6 PUSH')
# # (nothing printed; no PRINT commands)

# Further Exploration
# Try writing a minilang program to evaluate and print the result of this
# expression:

puts (3 + (4 * 5) - 7) / (5 % 3)
minilang('3 PUSH 5 MOD PUSH 3 PUSH 4 PUSH 5 MULT PUSH -7 ADD ADD PUSH POP DIV')