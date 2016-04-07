# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
  str_arr = string.chars
  new_str = ""
  if return_odds
    for i in 0...str_arr.length
      if i % 2 != 0
        new_str << str_arr[i]
      end
    end
  else
    for i in 0...str_arr.length
      if i % 2 == 0
        new_str << str_arr[i]
      end
    end
  end
  new_str
end
