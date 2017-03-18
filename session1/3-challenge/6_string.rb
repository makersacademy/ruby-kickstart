# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
	array = string.split(" ")
	word = " "
	if return_odds
		i = 1
		for e in array
			if i%2 != 0
				word += e + " "
				i += 1
			else
				i += 1
			end
		end
	else
		i = 1
		for e in array
			if i%2 == 0
				word += e + " "
				i += 1
			else
				i += 1
			end
		end
	end
	word
end
end
