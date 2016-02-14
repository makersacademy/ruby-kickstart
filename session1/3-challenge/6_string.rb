# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
newString = ""

if return_odds == true then string.each_char.with_index(0) {|x,i| newString << x if i.odd?}
elsif return_odds == false then  string.each_char.with_index(0) {|x,i| newString << x if i.even?}
end

newString


end



