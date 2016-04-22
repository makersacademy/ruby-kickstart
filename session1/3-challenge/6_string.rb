# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
  retval = ""
  arr = return_odds ? ((1...string.size).step(2)).to_a :  ((0...string.size).step(2)).to_a
  arr.each do |index|
    retval << string[index]
  end
  retval
end
