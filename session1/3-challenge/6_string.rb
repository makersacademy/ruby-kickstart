# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
  new_string = ''
  #return_odds == true ? (bool = 1) : (bool = 0)
  bool = return_odds ? 1 : 0
  string.length.times do |index|
    new_string += string[index] if (index % 2 == bool)
  end
  new_string
end
