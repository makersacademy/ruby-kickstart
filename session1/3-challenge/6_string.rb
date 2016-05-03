# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
	characters = ""
  string.size.times do |x|
    next if return_odds && x.even?
    next if !return_odds && x.odd?
    characters << string[x]
  end
  characters
<<<<<<< HEAD
end
=======
end
>>>>>>> bb8b84482f31e165e699fbf7e589038989fee53b
