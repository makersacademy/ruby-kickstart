# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)

  arr = string.split(//)
  output = []
  if return_odds == true
    arr.each_slice(2) {|a,b| output << b }
  elsif return_odds == false
    arr.each_slice(2) {|a,b| output << a }
  end

  output.compact.join

end

p odds_and_evens("abcdefg", true)