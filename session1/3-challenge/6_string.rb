# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
  a = string.split(//)
  if return_odds
    odd_pos = a.values_at(* a.each_index.select{|i| i.odd?})
    return odd_pos.join("")
  else
    even_pos = a.values_at(* a.each_index.select{|i| i.even?})
    return even_pos.join("")
  end
end
