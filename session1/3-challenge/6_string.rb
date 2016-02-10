# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
    odds = Array.new
    evens = Array.new
       string.each_char.with_index { |char, i|
    if i.odd?
        odds.push(char)
    else
        evens.push(char)
    end }
    if return_odds == true
        return odds.join("")
    else
        return evens.join("")
    end
end