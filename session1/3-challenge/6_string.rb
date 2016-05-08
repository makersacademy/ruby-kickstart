# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
	length = string.size
	count = 0
	new_string = ""
while length > count do
	if return_odds && count.odd?
		new_string << string[count]
	elsif !return_odds && count.even?
		new_string << string[count]
	end
count += 1
end
puts new_string
return new_string
end

odds_and_evens("Testing 1, 2, 3", true)
