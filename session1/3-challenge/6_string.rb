# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
	array = string.split(//)
	toReturn = []
	if return_odds == true
		for i in 0..(string.length)
			toReturn.push(array[i])if i % 2 == 1
		end
	else
		for i in 0..(string.length)
			toReturn.push(array[i])if i % 2 == 0
		end
	end
	newString = toReturn.join()
end