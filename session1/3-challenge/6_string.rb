# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
	i = 0
	array_odds = []
	array_evens = []
	string.split("").each do |character|
		if i == 0 || i.even? 
		array_evens << character
		elsif i.odd?
		array_odds << character
		end
		i += 1
	end
	case return_odds
	when true
		array_odds.join
	else
		array_evens.join
	end
end




