# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
    new_string=""
    if string.length>0
        return_odds == true ? string.split("").map.with_index {|x, i| new_string<< x if i.odd?} : string.split("").map.with_index {|x, i| new_string<< x if i.even?}
        p new_string
    else
        return ""
    end
end
p odds_and_evens("a",false)