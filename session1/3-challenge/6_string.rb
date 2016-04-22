# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
  new_string = ""
  if return_odds == true
    string.each_char.with_index { |c, index| index.even? ? new_string << "" : new_string << c }
  else
  	string.each_char.with_index { |c, index| index.even? ? new_string << c : new_string << "" }
  end
  return new_string
end