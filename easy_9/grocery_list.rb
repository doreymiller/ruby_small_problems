# grocery_list.rb

# Write a method which takes a grocery list (array) of fruits with quantities
# and converts it into an array of the correct number of each fruit.

# input - array of arrays, each subarray contains fruit name and number of fruits
# output - one array, containing the names of each fruit the correct number of
# times

# algorithm
# initialize empty array results = []
# iterate through input array using each |item|
# item[1] times do - add item[0] to results
# return results

def buy_fruit(fruit_list)
  results = []
  
  fruit_list.each do |entry|
    entry[1].times { results << entry[0] }
  end
  
  results
end

# Example:

puts buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
