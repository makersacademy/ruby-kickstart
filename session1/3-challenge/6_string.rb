# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
  return_odds ? i = 1 : i = 0
  result = ''

  while i <= string.length do
    result += string[i].to_s
    i+=2
  end

  return result
end