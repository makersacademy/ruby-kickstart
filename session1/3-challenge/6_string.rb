# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
    odds = ""
    evens = ""
       string.each_char.with_index { |char, i|
   if i.odd?
       odds << char
    else
        evens << char
    end }
    if return_odds == true
        return odds
    else
        return evens
    end
end