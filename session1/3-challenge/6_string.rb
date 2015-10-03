# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# odds_and_evens("abcdefg",true)    # => "bdf"
# odds_and_evens("abcdefg",false)   # => "aceg"

def odds_and_evens(string, return_odds)
  if return_odds                        # if odds is true
    return_string = ""
    string.size.times do |index|        # here we should "size - (show length of our string)" times checkout  
      if index.odd?                     # whether our letter is odd ? 
        return_string << string[index]  # if the letter is odd we just add it to our string
			end
		end
    return_string                       # return our string
	else
    return_string = ""                  #if odds is false
    string.size.times do |index|        #the same case, but now we checkout each letter whether it's even or not
      if index.even?
        return_string << string[index]  #if so we add it to our string
			end
		end
    return_string                       #return the result
	end
end