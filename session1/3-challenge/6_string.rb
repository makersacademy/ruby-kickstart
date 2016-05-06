# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
	chars = string.split(//)
	return (chars.select.each_with_index { |_,i| i % 2 != 0 }).join() if return_odds
	return (chars.select.each_with_index { |_,i| i % 2 == 0 }).join() 
end