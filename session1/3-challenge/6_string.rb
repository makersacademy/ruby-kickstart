# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
  string.split("")
  new_string = []
  array_length = string.length + 1
  if return_odds # return new string with all odd characters
  	i = 1
  else # return string with all even characters
  	i = 0
  end
  
  while i <= array_length +1
    new_string << string[i]
    i += 2
  end
  new_string.join("")
end