# stag_caps2.rb

# Modify the method from the previous exercise so it ignores non-alphabetic
# characters when determining whether it should uppercase or lowercase each
# letter. The non-alphabetic characters should still be included in the return
# value; they just don't count when toggling the desired case.


def staggered_case(str, start_up_case = true)
  capital = start_up_case
  result_str = ""
  str.each_char do |char|
    if char =~ /[a-zA-Z]/
      capital ? char.upcase! : char.downcase!
      capital = !capital
    end
    result_str << char
  end
  result_str   
end


# Example:

puts staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
puts staggered_case('ALL CAPS') == 'AlL cApS'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'