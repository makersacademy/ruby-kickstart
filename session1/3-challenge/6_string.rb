# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
    
    if return_odds == true
        return_string = ""
        string.size.times do |letters|
            if letters.odd?
                return_string << string[letters]
            end
        end
        return_string
        else
        
        return_string = ""
        string.size.times do |letters|
            if letters.even?
                return_string << string[letters]
            end
        end
        return_string
        
    end
end