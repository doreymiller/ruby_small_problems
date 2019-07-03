# alphabetical_numbers.rb

# Write a method that takes an Array of Integers between 0 and 19, and returns
# an Array of those Integers sorted based on the English words for each number:

# zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven,
# twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen

# input - array of Integers between 0 and 19
# output - returns an Array of Integers sorted based on the English words

# algorithm
# => iterate through input array and add matching word from NUMBER_WORDS[index]
# => to new array of word nums.  
# => sort array of word nums alphabetically.
# => iterate through word nums array and use find_index(word) to get the index 
# => of the word in NUMBER_WORDS and add the index to results array.
# => return results array

NUMBER_WORDS = [
  "zero", "one", "two", "three", "four", "five", "six", "seven", "eight",
  "nine", "ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen",
  "sixteen", "seventeen", "eighteen", "nineteen"
]

# --- my solution
# def alphabetic_number_sort(arr)
#   word_nums = arr.each_with_object([]) do |num, list|
#     list << NUMBER_WORDS[num]
#   end
#   word_nums.sort!
#   results = word_nums.map { |word| NUMBER_WORDS.find_index(word) }
# end

# --- ls solution
def alphabetic_number_sort(arr)
  arr.sort_by { |number| NUMBER_WORDS[number] }
end

puts alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]