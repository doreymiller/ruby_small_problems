# madlibs.rb

# Make a madlibs program that reads in some text from a text file that you have
# created, and then plugs in a selection of randomized nouns, verbs, adjectives,
# and adverbs into that text and prints it. You can build your lists of nouns,
# verbs, adjectives, and adverbs directly into your program, but the text data
# should come from a file or other external source. Your program should read this
# text, and for each line, it should place random words of the appropriate types
# into the text, and print the result.

# input - text file
# output - string using text from text file and random words

EXTERNAL_TEXT = "The ADJECTIVE_1 ADJECTIVE_2 NOUN_1 VERB_1 up the water" \
"spout. Down came the NOUN_2, and washed the NOUN_1 out. "\
"Out came the sun, and VERB_2 up all the NOUN_2, "\
"and the ADJECTIVE_1 ADJECTIVE_2 NOUN_1 VERB_1 up the spout again."\

WORDS = {noun: ['bus', 'dog', 'shoe', 'breakfast'], verb: ['ran', 'ate', 'blew',
'swept'], adjective: ['blue', 'fast', 'stinky', 'wet'], adverb: ['quickly', 
'eagerly', 'noisily', 'quietly']
        }

# algorithm
# read in text from text file
# go through WORDS hash and for each key, initialize count variable to 1 and use
# gsub! to replace the string key.to_s.upcase + "_#{count}" with a sample of 
# the WORDS values.  if text does not contain tring key.to_s.upcase + "_#{count}"
# then go to next key.

def madlibs(txt)
    WORDS.each do |key, value|
        count = 1
        loop do
            placeholder = "#{key.to_s.upcase}_#{count}"
            break unless txt.gsub!(placeholder, value.sample) 
            count += 1
        end
    end
    puts txt
end

madlibs(File.read('external_text.txt'))

