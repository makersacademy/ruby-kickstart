# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
  stringarray = string.split(//)
  newstringhash = Hash[(0...stringarray.size).zip stringarray]

  if return_odds
    newstringhash.select do |key, value|
      key.odd?
    end.values.join("")
  else
    newstringhash.select do |key, value|
      key.even?
    end.values.join("")
  end
end

