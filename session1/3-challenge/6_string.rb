# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
	
	newstring = ""
	if return_odds
		# return the odd characters
		string.each_char do|c|
			if string.index(c).odd?
				newstring = newstring + c
			end
			
		end
		return newstring
	end
		

	if !return_odds
		#return the even characters
		string.each_char do|c|
			if string.index(c).even?
				newstring = newstring + c
			end
		end
		return newstring
	end
end


	#puts newstring




puts odds_and_evens('112233445566778899', true)

