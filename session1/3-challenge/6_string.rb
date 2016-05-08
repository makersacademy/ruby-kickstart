# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
arr = string.chars
odds = []
evens = []

for i in 0..arr.length - 1
  odds << arr[i] if i % 2 != 0
  evens << arr[i] if i % 2 == 0
end

if return_odds == true
  return odds.join
else
  return evens.join
end

end


