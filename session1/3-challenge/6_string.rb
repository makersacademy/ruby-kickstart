# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)

	answer = ""
	for pos in 0..string.length - 1
		answer << string[pos].chr if (pos.odd? && return_odds) || (pos.even? && !return_odds)
	end
	return answer

end