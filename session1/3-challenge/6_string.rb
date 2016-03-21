# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
array = []

if return_odds
	string.chars.each.with_index {|x, i| array << x if i.odd?}	
else
	string.chars.each.with_index {|x, i| array << x if i.even?}
end

array.join("")

end