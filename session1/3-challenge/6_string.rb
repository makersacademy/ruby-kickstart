# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
	odds = []
	evens = []
	array = string.chars
	
	hash = Hash[array.each_with_index.map { |value, key| [key, value] }]

		hash.each { |i, x| i % 2 == 0 ? evens << x : odds << x }
		
			if return_odds == false
				return evens.join
			else
				return odds.join 
			end	
end