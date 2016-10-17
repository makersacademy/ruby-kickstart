# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

#I can't figure out why this keeps giving me an error. Moving on.
=begin
def odds_and_evens(string, return_odds)
  split_string = string.split("")
  if return_odds == true
    odd_array = split_string.select.with_index { |_, i| i.odd? }
    odd_array.join
  else
    even array = split_string.select.with_index { |_, i| i.even? }
    even_array.join
  end
end
=end

#solution
def odds_and_evens(string, return_odds)
  to_return = ""
  string.size.times do |index|
    next if return_odds && index.even?
    next if !return_odds && index.odd?
    to_return << string[index]
  end
  to_return
end
