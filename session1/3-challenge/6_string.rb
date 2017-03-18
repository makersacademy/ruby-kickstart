# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
# 
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
# 
# odds_and_evens("abcdefg",true)    # => "bdf"
# odds_and_evens("abcdefg",false)   # => "aceg"

def odds_and_evens(string, return_odds)
		new_string = ''
		string.length.times do |i|
		if i.odd? && return_odds
		new_string << string[i]
		elsif i.even? && !return_odds 
		new_string << string[i]
	end
end 
	return new_string 		 	
end 
 

puts odds_and_evens("hellorandomstring", true)