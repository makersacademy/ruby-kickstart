# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
final_string = ""

if return_odds
  string.length.to_i.times do |x|
  final_string << string[x] if x.odd?
  end
else
  string.length.to_i.times do |x|
  final_string << string[x] if x.even?
  end
end

final_string
end
