# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
string = string.split('')
devolver = []
    counter = 0
	if return_odds == true
		string.each do |x|
			if counter % 2 != 0
				devolver.push(x)
			end
			counter= counter + 1
		end	
	else
		string.each do |x|			
			if counter % 2 == 0
				devolver.push(x)
			end
			counter= counter + 1
		end	
	end
return devolver.join
end