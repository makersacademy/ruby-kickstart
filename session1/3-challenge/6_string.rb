# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#
# ---- Wants odd "key" numbers, not odd characters as read----
def odds_and_evens(string, return_odds)
  length = string.length
  return_string = []
  array_even = (0...length).step(2).to_a
  array_odd = (1...length).step(2).to_a
  if return_odds
    array_odd.each{|i| return_string << string[i] }
  else
    array_even.each{|i| return_string << string[i]}
  end
  return_string.join

end
