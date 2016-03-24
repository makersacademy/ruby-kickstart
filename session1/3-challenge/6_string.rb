# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
counter = 0
answer_odd = ""
answer_even = ""
	while counter != string.length do 	
		if counter.odd?
			answer_odd += string[counter]
		else
			counter.even?
			answer_even += string[counter]
		end	

	counter += 1
	end

	if return_odds == true
		answer_odd
	else
		answer_even	
	end	
end	


