# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#
# odds_and_evens("abcdefg",true)    # => "bdf"
# odds_and_evens("abcdefg",false)   # => "aceg"

def odds_and_evens(string, return_odds)
  newstring = ""
  n = 1 if return_odds
  n = 0 if !return_odds
  # n = return_odds ? 1 : 0

  for index in 0..(string.length-1)
    if index % 2 == n
      newstring = newstring + string[index]
    end
  end
  return newstring
end

puts odds_and_evens("abcdefg", false)
