# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
	characters = string.split('')
	newstring = []
	if return_odds
	characters.each_with_index {|char,index| index.odd? ? newstring.push(char) : '' }
else
	characters.each_with_index {|char,index| index.even? ? newstring.push(char) : '' }
end
newstring.join('')
end