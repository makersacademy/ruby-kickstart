# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
    n = string.length
    arr = []
    x = 0
    if return_odds
        while x < n do
        arr << string[x] if x.odd?
        x += 1
        end
    else
        while x < n do
        arr << string[x] if x.even?
        x += 1
        end
    end
    arr.join
end

