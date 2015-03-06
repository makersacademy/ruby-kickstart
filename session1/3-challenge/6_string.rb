# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
  mystring = ""
  x = 0
  if return_odds
    string.size.times do |i|
      i.even? ? next : mystring << string[i]
    end
  else
    string.size.times do |i|
      i.odd? ? next : mystring << string[i]
    end
  end
  mystring
end