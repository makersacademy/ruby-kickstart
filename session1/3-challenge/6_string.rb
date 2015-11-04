# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
  new_string_odds = ""
  string.length.times do |odd|
    next if odd.even? # better than next if odd % 2 == 0
  new_string_odds << string[odd]
  end

  new_string_even = ""
  string.length.times do |even|
    next if even.odd? # better than next if even % 2 == 1
  new_string_even << string[even]
  end

  if return_odds
    new_string_odds
  else
    new_string_even
  end
end
