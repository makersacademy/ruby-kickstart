# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
  to_return = ""
  if return_odds == true
    return string.split.select{|char| char % 2 == 0 }.join
  else
    return string.split.select{|char| char % 2 != 0 }.join
    to_return << string[char]
end
  to_return
end
