# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#


def odds_and_evens(string, return_odds)
	new_string = []
	string.split("").each_with_index do |x,i|
	 	if return_odds == true 
	 		if i.odd? 
	 			new_string.push(x)
	 		end
	 	else 
	 		if i.even?
	 		 	new_string.push(x)
	 		end
	 	end
	 end
	return new_string.join("")
end