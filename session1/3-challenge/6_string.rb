# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
  counter = 1
  result_odd = ''
  result_even = ''
  while counter <= string.length
    if counter.odd?
      result_even  += string[counter - 1]
    else
      result_odd += string[counter - 1]
    end
    counter += 1
  end
  return_odds ? result_odd : result_even
end
