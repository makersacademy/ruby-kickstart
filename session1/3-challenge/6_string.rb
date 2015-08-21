# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
	string_array = string.split('')
	sorted_array = []

	if return_odds == true
	  string_array.each do |item|
			if ((string_array.index(item) % 2) > 0)
				sorted_array.push item
			end
		end
	else
		string_array.each do |item|
			if ((string_array.index(item) % 2) == 0)
				sorted_array.push item
			end
		end
 	end
	
	sorted_array.join('')
end

puts odds_and_evens("1122334434232456", true)