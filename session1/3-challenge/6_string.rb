# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
	new_string = ""
	if return_odds
		n = 1
	else
		n = 0
	end
	n.step(string.length-1,2) do |current|
		new_string << string[current]
	end
	new_string
end


puts odds_and_evens("abcdefg", true)
puts odds_and_evens("abcdefghijklmnop", false)