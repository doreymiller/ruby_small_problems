# abcs.rb

# A collection of spelling blocks has two letters per block, as shown in this
# list:

# B:O   X:K   D:Q   C:P   N:A
# G:T   R:E   F:S   J:W   H:U
# V:I   L:Y   Z:M
# This limits the words you can spell with the blocks to just those words that
# do not use both letters from any given block. Each block can only be used
# once.

# Write a method that returns true if the word passed in as an argument can be
# spelled from this set of blocks, false otherwise.

# input - string (word)
# output - boolean (true if the word can be spelled using the blocks, false if
# not)

# algorithm
# create a constant BLOCKS hash with number key and value is array of letter
# pairs
# create local variable blocks of BLOCKS.values
# initialize block_nums array = []
# iterate through blocks.
# case input word includes block[0] && block[1] then return false
# when input word includes block[0] || block[1] && block_nums inclues key of
# block
# then return false
# outside case then return true

BLOCKS = { 1 => %w(B O), 2 => %w(G T), 3 => %w(V I), 4 => %w(X K), 5 => %w(R E),
           6 => %w(L Y), 7 => %w(D Q), 8 => %w(F S), 9 => %w(Z M),
           10 => %w(C P), 11 => %w(J W), 12 => %w(N A), 13 => %w(H U) }.freeze

def block_word?(str)
  blocks = BLOCKS.values
  block_nums = []

  blocks.each do |block|
    word = str.upcase
    block_nums << BLOCKS.key(block) if word =~ /[#{block[0]}#{block[1]}]/
  end

  str.size == block_nums.size
end

# Examples:

puts block_word?('BATCH') == true
puts block_word?('BUTCH') == false
puts block_word?('jest') == true
