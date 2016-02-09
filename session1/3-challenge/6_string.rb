# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
  output = ''
  if return_odds
    n = 1
  else
    n = 0
  end
  while n < string.length
    output = output + string[n]
    n = n+2
  end
  return output
end
