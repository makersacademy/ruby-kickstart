# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
  odds_only = string.chars.map.with_index { |n, i| i.even? ? nil : n }.join
  evens_only = string.chars.map.with_index { |n, i| i.odd? ? nil : n }.join
  return_odds ? odds_only : evens_only
end
