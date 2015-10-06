# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
  if return_odds == false
    string_odds = ''
    (0..string.length-1).each do |i|
      if i.even?
        string_odds << string[i]
      end
    end
    return string_odds
  else
    string_evens = ''
    (0..string.length-1).each do |i|
      if i.odd?
        string_evens << string[i]
      end
    end
    return string_evens
  end
end