# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)

  new_string = ""

if return_odds == true
  n = 1
  while n < (string.length)
    new_string << string[n]
    n += 2
  end
else
  n = 0
  while n < (string.length-1)
    new_string << string.length
    n += 2
  end
end

return new_string

end


