# grade_book.rb

# Write a method that determines the mean (average) of the three scores passed to
# it, and returns the letter value associated with that grade.

# Numerical Score Letter	Grade
# 90 <= score <= 100	'A'
# 80 <= score < 90	'B'
# 70 <= score < 80	'C'
# 60 <= score < 70	'D'
# 0 <= score < 60	'F'
# Tested values are all between 0 and 100. There is no need to check for
# negative values or values greater than 100.

# input - three numbers (scores)
# output - string, letter grade of average of three input scores

# algorithm
# create a hash table for scores, using low and high values for range key
# calculate avg = (num1 + num2 + num3) / 3
# calculate grade using avg - loop through scores hash with each |key, val|
# if (val[1]..val[2]).includes? average, return key.to_s

SCORES = { A: [90, 100], B: [80, 89], C: [70, 79], D: [60, 69], F: [0, 59] }

def get_grade(grade1, grade2, grade3)
  avg = (grade1 + grade2 + grade3) / 3
 
  SCORES.each do |key, val|
    return key.to_s if (val[0]..val[1]).include?(avg)
  end
end

# Example:

puts get_grade(95, 90, 93) == "A"
puts get_grade(50, 50, 95) == "D"