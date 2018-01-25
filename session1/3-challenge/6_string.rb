# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
  odd_string = []
  even_string = []
  string.split("").each_with_index {|char, index | index % 2 == 0 ? even_string.push(char) : odd_string.push(char)}

  return_odds == true ? odd_string.join.to_s : even_string.join.to_s

end