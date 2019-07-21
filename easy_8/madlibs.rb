# madlibs.rb

# Mad libs are a simple game where you create a story template with blanks for
# words. You, or another player, then construct a list of words and place them
# into the story, creating an often silly or funny story as a result.

# Create a simple mad-lib program that prompts for a noun, a verb, an adverb,
# and an adjective and injects those into a story that you create.

# Example

# Enter a noun: dog
# Enter a verb: walk
# Enter an adjective: blue
# Enter an adverb: quickly

# Do you walk your blue dog quickly? That's hilarious!

# input - 4 strings (noun, verb, adjective, and adverb) received after
# prompted
# output - a string, which is a story that plugs in the 4 input strings to the
# appropriate spots

# Story structure: "Your lips look #{adjective}.  Does that mean you #{verb} a
# #{noun} #{adverb}?"

# algorithm
# create an array of words to be prompted for ["adjective", "verb past tense", 
# "noun", "adverb"]
# initialize answers hash
# create a subroutine prompt_word(str) which outputs "Enter a " + str (check for
# vowel to decide between "a" and "an")
# store answer in hash[word]
# output story

WORDS_NEEDED = ["adjective", "verb past tense", "noun", "adverb"]

def prompt_word(str)
  str[0] =~ /[aeiou]/ ? article = "an" : article = "a"
  puts "Enter #{article} #{str}:"
end

answers = {}

WORDS_NEEDED.each do |type| 
  prompt_word(type) 
  answers[type] = gets.chomp
end

puts "Your lips look #{answers["adjective"]}.  Does that mean you \
#{answers["verb past tense"]} a #{answers["noun"]} #{answers["adverb"]}?"

  
