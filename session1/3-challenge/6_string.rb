# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
	output = ""
	if (return_odds)
		for i in (0..string.length-1)
	#		print string[i]
			if (i % 2 != 0)
				output = output + string[i]
			end
		end
	else
		for i in (0..string.length-1)
			if (i % 2 == 0)
				output = output + string[i]
			end
		end
	end
	return output
end

# print "value=", odds_and_evens("abcdef", true)
=begin

def odds_and_evens(string, return_odds)
  to_return = ""
  string.size.times do |index|
    next if return_odds && index.even?
    next if !return_odds && index.odd?
    to_return << string[index]
  end
  to_return
end
=end