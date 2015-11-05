# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
	string_returned = ""
	string.size.times do |index|
		if (return_odds && index.odd?) || (!return_odds && index.even?)
			string_returned << string[index]
		end
	end
	string_returned
end