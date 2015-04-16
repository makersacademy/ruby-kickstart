# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#
# odds_and_evens("supercalifragilisticexpialidocious", true)

def odds_and_evens(string, return_odds)
  list = ""
  if return_odds
    string.length.times {|i| list << string[i] if i.odd?}
  else
    string.length.times {|i| list << string[i] if i.even?}
  end
  list
end