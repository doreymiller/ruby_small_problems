# odds_list.rb

# Write a method that returns an Array that contains every other element of 
# an Array that is passed in as an argument. The values in the returned list 
# should be those values that are in the 1st, 3rd, 5th, and so on elements of 
# the argument Array.

# Examples:

# oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
# oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
# oddities(['abc', 'def']) == ['abc']
# oddities([123]) == [123]
# oddities([]) == []

# input
# => an array
# output
# => an array

# abstraction
# => method receives input array.  copy every other element to a new array and
# => return new array. 

def oddities(list)
  new_list = []
  list.each_index do |ind|
    new_list << list[ind] if (ind + 1).odd?
  end
  new_list
end

def oddities_2(list)
  new_list = []
  count = 0
  while count < list.size
    if (count + 1) % 2 == 1
      new_list << list[count]
    end
    count += 1
  end
  new_list
end


p oddities_2([2, 3, 4, 5, 6])
p oddities([1, 2, 3, 4, 5, 6])
p oddities(['abc', 'def'])
p oddities([123])
p oddities([])