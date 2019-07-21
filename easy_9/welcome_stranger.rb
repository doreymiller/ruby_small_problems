# welcome_stranger.rb

# Create a method that takes 2 arguments, an array and a hash. The array will
# contain 2 or more elements that, when combined with adjoining spaces, will
# produce a person's name. The hash will contain two keys, :title and
# :occupation, and the appropriate values. Your method should return a greeting
# that uses the person's full name, and mentions the person's title.

# input - array and a hash
# output - a string greeting that uses the full name provided by the array and
# the hash values of title and occupation

# algorithm
# convert input array to full name string - name = arr.join(' ')
# convert hash to string title - title = "#{hash[:title]} #{hash[:occupation]}"
# print out greeting including name and title strings

def greetings(name_arr, title_hash)
  name = name_arr.join(' ')
  title = "#{title_hash[:title]} #{title_hash[:occupation]}"
  puts "Hello, #{name}!  Nice to have a #{title} around."
end

# Example:

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => Hello, John Q Doe! Nice to have a Master Plumber around.