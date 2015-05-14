# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
# 
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
# 
# odds_and_evens("abcdefg",true)    # => "bdf"
# odds_and_evens("abcdefg",false)   # => "aceg"

def odds_and_evens(string, return_odds)
	newstring = ""
	j = 1
	if return_odds
		string.split("").each do |i|
			j += 1
			newstring << i unless j % 2 == 0
		end
	else
		string.split("").each do |i|
			j += 1
			newstring << i if j % 2 == 0
		end
	end
	newstring
end
