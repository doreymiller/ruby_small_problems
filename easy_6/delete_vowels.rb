# delete_vowels.rb

# Write a method that takes an array of strings, and returns an array of the same
# string values, except with the vowels (a, e, i, o, u) removed.

# input - array of strings
# output - array of the same strings, except with vowels (a, e, i, o, u) removed.

# algorithm
# transform the original array using map
# for each element in the original array, delete "aeiouAEIOU" from the string

VOWELS = "aeiouAEIOU"

def remove_vowels(arr_strings)
  results = arr_strings.map do |str|
    str.delete(VOWELS)
  end
end

# Example:

puts remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
puts remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
puts remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']