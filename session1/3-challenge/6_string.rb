# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
  array = string.split('')
  if return_odds
    array.select.with_index{|_, i| i.odd?}.join
  else
    array.select.with_index{|_, i| i.even?}.join
  end
end
