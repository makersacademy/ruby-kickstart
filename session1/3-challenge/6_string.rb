# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
  array_of_char = []
  if return_odds
    string.each_char.with_index { |item,index| array_of_char.push(item) if index.odd?}
  else
    string.each_char.with_index { |item,index| array_of_char.push(item) if index.even?}
  end
  return array_of_char.join
end
