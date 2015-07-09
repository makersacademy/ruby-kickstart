# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
  newstring = ''
  i = 0
  if return_odds
    while i < string.length
      if i % 2 != 0
        newstring = newstring + string[i]
      end
      i += 1
    end
  else
    while i < string.length
      if i % 2 == 0
        newstring = newstring + string[i]
      end
      i += 1
    end
  end
  newstring
end