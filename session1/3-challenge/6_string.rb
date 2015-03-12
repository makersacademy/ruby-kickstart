# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)

	string_array = string.split(//)
	new_string_array = []

	string_array.each_with_index do |char, index|
		new_string_array << char if (return_odds ? index.odd? : index.even?)
	end

new_string_array.join

end