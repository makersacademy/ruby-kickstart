# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
## odds_and_evens("abcdefg",true)    # => "bdf"
# odds_and_evens("abcdefg",false)   # => "aceg"

def odds_and_evens(string, return_odds)

	if return_odds

		# returns odd letter in array
		return_characters = ""
		string.size.times do |letter|
			if letter.odd?
				return_characters << string[letter] # => "b", "bd", "bdf"
			end
		end

		#returns array
		return_characters

	else

		# returns even letter in array
		return_characters = ""
		string.size.times do |letter|
			if letter.even?
				return_characters << string[letter] # => "a", "ac", "ace", "aceg"
			end
		end

		# returns array
		return_characters

	end

end
