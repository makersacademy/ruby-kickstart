# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
    array = string.split("")
    new_string = ""
    
         if return_odds == false
            array.each_with_index do|item, index| next if index.odd?
                new_string << string[item]
            end
        else 
            array.each_with_index do |item, index| next if index.even?
                new_string << string[item]
            end
        end       
   return new_string
end
