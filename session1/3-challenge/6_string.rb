# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
  array = string.split('').partition.with_index { |_, i| i.even?  }
  even = array[0]
  odd= array[1]
  if return_odds
    odd.join
  else
    even.join
  end
end
