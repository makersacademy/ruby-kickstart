# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
  new_string = ""
  i = 0
  string.each_char do |char|
    if return_odds
      new_string << char if i % 2 != 0
    else
      new_string << char if i % 2 == 0
    end
    i += 1
  end
  return new_string
end