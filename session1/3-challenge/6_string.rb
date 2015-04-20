# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
	if return_odds == true
		variable = string.split("")
		varible2 = variable.values_at(* variable.each_index.select {|i| i.odd?})
		varible2.join
	else
		variable = string.split("")
		varible2 = variable.values_at(* variable.each_index.select {|i| i.even?})
		varible2.join
	end
end

