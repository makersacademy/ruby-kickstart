# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
  string2 = string.chars
  if string2 && return_odds
    string2.values_at(* string2.each_index.select {|i| i.odd?}).join('')
  else
    string2.values_at(* string2.each_index.select {|i| i.even?}).join('')
  end
end