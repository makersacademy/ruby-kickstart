# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)

  if return_odds
    i = 1
  else
    i = 0
  end

  string_edit = String.new

  while i <= string.length - 1 do
    string_edit += string[i]
    i += 2
  end

string_edit

end

