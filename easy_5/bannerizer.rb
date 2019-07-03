# bannerizer.rb

# Write a method that will take a short line of text, and print it within a box.

# Example:

# print_in_box('To boldly go where no one has gone before.')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+
# print_in_box('')
# +--+
# |  |
# |  |
# |  |
# +--+
# You may assume that the input will always fit in your terminal window.

# input - string
# output - a string printed out that shows a box around the original string
# with plus marks in the four corners of the box, small dashes along the top
# and bottom of the box, and line pipes along the sides of the box.  there is
# a space of padding on all sides of the string

# algorithm
# set PADDING = 1.  CORNER = "+" . TOP_BOTTOM = "-" SIDES = "|" BORDER_SIZE = 1
# create new empty string.
# calculate number of lines: PADDING * 2 + BORDER_SIZE * 2 + 1
# set line_counter = 1
# in a loop, if line_counter == 1 || line_counter == num_lines, then 
# add_top_bottom(str).  elsif line_counter == num_lines / 2 + 1 then
# add_text(str).  else add_padding(str)

# --- my solution
# PADDING = 1
# BORDER_SIZE = 1

# CORNER_CHAR = '+'
# TOP_BOTTOM_CHAR = '-'
# SIDES_CHAR = '|'

# NUM_LINES = PADDING * 2 + BORDER_SIZE * 2 + 1

# def add_top_bottom_line(str, size)
#   new_line =
#     CORNER_CHAR + TOP_BOTTOM_CHAR * (size + (PADDING * 2)) + CORNER_CHAR
#   str << new_line
# end

# def add_padding_line(str, size)
#   new_line = SIDES_CHAR + (' ' * (size + (PADDING * 2))) + SIDES_CHAR
#   str << new_line
# end

# def add_text_line(str, text)
#   new_line = SIDES_CHAR + (' ' * PADDING) + text + (' ' * PADDING) + SIDES_CHAR
#   str << new_line
# end

# def print_in_box(str)
#   line_counter = 1
#   result_str = ""
#   loop do
#     if line_counter == 1 || line_counter == NUM_LINES
#       add_top_bottom_line(result_str, str.size)
#     elsif line_counter == NUM_LINES / 2 + 1
#       add_text_line(result_str, str)
#     else
#       add_padding_line(result_str, str.size)
#     end
#     line_counter += 1
#     break if line_counter > NUM_LINES
#     result_str << "\n"
#   end
#   print result_str
# end

# -- ls solution
MAX_WIDTH = 80
MESSAGE_MAX_WIDTH = MAX_WIDTH - 4

def truncate_message(message)
  message.slice!(MESSAGE_MAX_WIDTH - 1, message.size)
end

def print_in_box(message)
   truncate_message(message) if message.size > MESSAGE_MAX_WIDTH
   
   horizontal_rule = "+#{'-' * (message.size + 2)}+"
   empty_line = "|#{' ' * (message.size + 2)}|"

   puts horizontal_rule
   puts empty_line
   puts "| #{message} |"
   puts empty_line
   puts horizontal_rule
end

print_in_box('To boldly go where no one has gone before. That is the statement. How big does this need to be?')