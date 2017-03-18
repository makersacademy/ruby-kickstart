# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
	evenstring = ""
	oddstring = ""
	letters = string.split ''
	letters.each_index do |i|
		if i % 2 == 0
			evenstring << string[i]
		else
			oddstring << string[i]
		end
	end
	if return_odds == false
		return evenstring
	else
		return oddstring
	end


end


	

odds_and_evens("abcdefg", true)