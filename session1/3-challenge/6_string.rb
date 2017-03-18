# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#
=begin
def odds_and_evens(string, return_odds)
  odd = ''
  even = ''
  string.each do |item|
    if item % 2 == 0
      even << item
    elsif item % 2 == 1
      odd << item
    end
    return odd
end
=end
def odds_and_evens(string, return_odds)
to_return = ""
string.size.times do |index|
  next if return_odds && index.even?
  next if !return_odds && index.odd?
  to_return << string[index]
end
to_return
end
