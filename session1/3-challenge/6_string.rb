# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#


string = ""
def odds_and_evens(string, return_odds)

if return_odds == true
string.each_char.with_index{|x,i| string << x if i.odd?} 
else
string.each_char.with_index{|x,i| string << x if i.even?}
end

end



