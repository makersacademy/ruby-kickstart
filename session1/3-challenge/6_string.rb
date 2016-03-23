# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
     new_array= string.split("")
another_array = []
if return_odds
new_array.each.with_index {|char, index| another_array << char if index.odd?}
another_array.join
else 
new_array.each.with_index {|char, index| another_array << char if index.even?}
another_array.join
end
end

  

