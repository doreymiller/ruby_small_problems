# 1000_lights.rb

# You have a bank of switches before you, numbered from 1 to n. Each switch is
# connected to exactly one light that is initially off. You walk down the row of
# switches and toggle every one of them. You go back to the beginning, and on this
# second pass, you toggle switches 2, 4, 6, and so on. On the third pass, you go
# back again to the beginning and toggle switches 3, 6, 9, and so on. You repeat
# this process and keep going until you have been through n repetitions.

# Write a method that takes one argument, the total number of switches, and
# returns an Array that identifies which lights are on after n repetitions.

# Example with n = 5 lights:

# round 1: every light is turned on
# round 2: lights 2 and 4 are now off; 1, 3, 5 are on
# round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
# round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
# round 5: lights 2, 3, and 5 are now off; 1 and 4 are on
# The result is that 2 lights are left on, lights 1 and 4. 
# The return value is [1, 4].

# With 10 lights, 3 lights are left on: lights 1, 4, and 9. 
# The return value is [1, 4, 9].

# input - a number (number of switches)
# output - array of numbers corresponding to which switches are on

# algorithm
# initialize switches array so that there input n elements set to true
# switches = Array.new(true, num)
# initialize round = 1
# initialize results array = []
# use the times method (n.times) to loop through and do
# set current_switch = round
# while the current_switch is < num
# set switches[current_switch] to !switches[current_switch]
# increment current_switch by round
# end while
# increment round by 1
# end times loop
# iterate through switches with each_with_index |switch, index|
# if switch is true, then add index to results array




def toggle_switches(num)
  switches = Array.new(num, false)
  round = 1
  
  num.times do
    toggle_every_nth_switch(switches, round)
    round += 1
  end
  
  on_lights(switches)
  print_results(on_lights(switches))
end

def toggle_every_nth_switch(switches, n)
  current_switch = n - 1
  while current_switch < switches.size
    switches[current_switch] = !switches[current_switch]
    current_switch += n
  end 
end

def on_lights(switches)
  results = []
  
  switches.each_with_index do |switch, index|
    results << index + 1 if switch
  end
  
  results
end

def print_results(switches)
  puts "The result is that lights #{switches[0..-2].join(', ')} and\
  #{switches[-1]} are on"
end

p toggle_switches(9)
p toggle_switches(10)
p toggle_switches(5)
p toggle_switches(1000)