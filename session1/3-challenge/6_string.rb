# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
# 
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
# 
# odds_and_evens("abcdefg",true)    # => "bdf"
# odds_and_evens("abcdefg",false)   # => "aceg"

def odds_and_evens(string, return_odds)
	new_string = ""
		if return_odds
			string.split("").each_index { |i| 
				if i % 2 ==  1 
					new_string << string[i]
				end
			}
		else
			string.split("").each_index { |i| 
				if i % 2 ==  0 
					new_string << string[i]
				end
			}
		end
	new_string
end


p odds_and_evens("abcdefg",true)    # => "bdf"
p odds_and_evens("abcdefg",false)