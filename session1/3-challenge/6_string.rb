# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
# 
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
# 
# odds_and_evens("abcdefg",true)    # => "bdf"
# odds_and_evens("abcdefg",false)   # => "aceg"

def odds_and_evens(string, return_odds)
	if return_odds
		solution = []
		string.split(//).each_with_index do |char, ind|
			solution << char if ind % 2 != 0
		end
		return solution.join()
	else
		solution = []
		string.split(//).each_with_index do |char, ind|
			solution << char if ind % 2 == 0
		end
		return solution.join()
	end
end
