# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)

  string_array = string.chars

  if return_odds
    string_array.values_at(* string_array.each_index.select {|x| x.odd?}).join
  else
    string_array.values_at(* string_array.each_index.select {|x| x.even?}).join
  end


end