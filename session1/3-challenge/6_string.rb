# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
  new_string = ''
  index = 0

  if return_odds == true
  while index < string.length
    new_string += string[index] if index.odd?
    index +=1
  end
  end

  if return_odds == false
  while index < string.length
    new_string += string[index] if index.even?
    index +=1
  end
  end
  
  new_string
end
