# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
  char_array = []

  if return_odds == true
      string.split(//).each.with_index{|char, index| char_array.push(char) if index.odd?}
  else
      string.split(//).each.with_index{|char, index| char_array.push(char) if index.even?}
  end
    char_array.join("")
end
