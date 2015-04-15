# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
	newstring = ""
	#create new string to hold return of method
	string.length.times do |i|
		#finds length of string and to each part of that length (index) does the following...
		next if i.even? && return_odds == true
		#next iterates through the string to find even numbers if the boolean is true
		next if i.odd? && return_odds == false
		#if boolean is false, next finds odd numbers
		newstring << string[i]
		#pushs them to the string
	end
	return newstring
end
	

odds_and_evens("abcdefg", true)
odds_and_evens("willthiswork", false)