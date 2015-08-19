# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
	if return_odds % 2 != 0
		puts string[1,3,5,7,9]
	else
		puts string[2,4,6,8,10]
	end
end

odds_and_evens("My name is harry", false)