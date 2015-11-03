# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
  returned_string = ""
  string.split(//).each_index do |c|
    if return_odds && c.odd?
      returned_string << string[c]
    elsif !return_odds && c.even?
      returned_string << string[c]
    end
  end
  returned_string
end
