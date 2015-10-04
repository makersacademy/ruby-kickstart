# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)

	if return_odds
		counter = 1
		new_string = ""
		while counter <= string.length - 1
			new_string += string[counter]
			counter += 2
		end
		new_string
	else
		counter = 0
		new_string = ""
		while counter <= string.length - 1
			new_string += string[counter]
			counter += 2
		end
		new_string
	end


end