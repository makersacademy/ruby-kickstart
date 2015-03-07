# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
  # Create a var called 'to_return' and set it to an empty string
  to_return = ""
  # call .size (which returns the character length) and .times do which is an
  # iterator function with |index| as the argument
  string.size.times do |index|
    # next scrolls through to the next iteration
    # if return_odds is true AND index is even
    next if return_odds && index.even?
    # if return_odds is false AND index is odd
    next if !return_odds && index.odd?
    # push the current index iteration into to_return
    to_return << string[index]
  end
  # then call to_return
  to_return
end
