# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
  character_return = ""
  string.size.times do |oddOrEven|
    if return_odds && oddOrEven.even?
      next
    elsif !return_odds && oddOrEven.odd?
      next
    end
    character_return << string[oddOrEven]
  end
  character_return
end
