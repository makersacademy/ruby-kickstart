# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)

  return_string = ""

  string_length = string.length

  for x in 0...string_length
    if x.odd? && return_odds == true
      return_string << string[x]
    elsif x.even? && return_odds == false
      return_string << string[x]
    end
  end
  return_string
end