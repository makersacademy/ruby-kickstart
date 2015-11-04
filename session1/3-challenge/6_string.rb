# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
    new_string = String.new
    
    if return_odds
        iterator = 0
        string.each_char do |i|
            iterator += 1
            next if iterator.odd?
            new_string << i
        end   
    else
        iterator = -1
        string.each_char do |i|
            iterator += 1
            next if iterator.odd?
            new_string << i
        end  
    end

    new_string
end