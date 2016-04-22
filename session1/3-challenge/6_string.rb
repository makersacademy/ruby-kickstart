# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
	count = 0
	new_string = ""
	string.split("").each do |letter| 
		count += 1
		new_string << letter if !count.even? && !return_odds
		new_string << letter if count.even? && return_odds
	end
	return new_string
end


odds_and_evens("abcdefg",false)