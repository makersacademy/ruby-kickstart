# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

# My failed script
=begin
def odds_and_evens(string, return_odds)
  empty_str = ""
  len = string.length
  len.times do |index|
    next if return_odds == true && index.even?
    next if return_odds == false && index.odd?
    empty_str = empty_str + string[index]
  end
end
=end


def odds_and_evens(string, return_odds)
  to_return = ""
  string.size.times do |index|
    next if return_odds && index.even?
    next if !return_odds && index.odd?
    to_return << string[index]
  end
  to_return
end
