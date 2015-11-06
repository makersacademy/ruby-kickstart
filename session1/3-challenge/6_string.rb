# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
  range = 0..string.length-1
  new_string = String.new
  range.step(2) {|x| string[x+1] && new_string << string[x+1]} if return_odds
  range.step(2) {|x| new_string << string[x]} if !return_odds
  new_string
end
