# tip_calculator.rb

# Create a simple tip calculator. The program should prompt for a bill amount 
# and a tip rate. The program must compute the tip and then display both the 
# tip and the total amount of the bill.

# Example:

# What is the bill? 200
# What is the tip percentage? 15

# The tip is $30.0
# The total is $230.0

# input
# => string bill amount and string tip rate
# output
# => string tip amount and string total

# abstraction
# => prompt user for the bill amount.  store answer in bill variable.  prompt
# => user for tip percentage.  calculate tip amount using bill amount and tip
# => percentage.  print out the tip total.  calculate bill total and print out
# => bill total.


def prompt(msg)
  puts "=> " + msg
end

def retrieve_ans
  ans = gets.chomp
end

def calculate_tip_amount(pct, bill)
  (pct.to_f/100) * bill
end

def calculate_bill_total(tip, bill)
  tip + bill
end

def print_results(tip, bill)
  prompt("The tip is #{sprintf("%.2f", tip)}.")
  prompt("The total is #{sprintf("%.2f", bill)}.")
end

prompt("What is the bill?")
my_bill = retrieve_ans().to_f
prompt("What is the tip?")
my_tip = retrieve_ans().to_f

my_tip_amt = calculate_tip_amount(my_tip, my_bill)
my_bill_total = calculate_bill_total(my_tip_amt, my_bill)

print_results(my_tip_amt, my_bill_total)
