# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
  chars = string.chars
  for i in 0..(chars.length-1)
    (chars[i] = '') if (return_odds ? i.even? : i.odd?)
  end
  chars.join
end