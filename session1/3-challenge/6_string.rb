# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
	returns = ""
	if return_odds
		string.length.times do |i|
			 next if i%2==0 
			 returns << string[i]
		end
	else string.length.times do |i|
			next if i%2!=0
			returns << string[i]
		end
	end
	returns
end