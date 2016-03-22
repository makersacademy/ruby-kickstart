# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
if return_odds == false
    return string.gsub(/(.)./, '\1')

else return_odds == true
   if string.length.odd?
       return string.gsub(/.(.)/, '\1')[0...-1]
   else 
       return string.gsub(/.(.)/, '\1')
   end
end
end
