# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
	#return_odds ? string % 2 : !string % 2
	array = []
	a = string.split("")
	#a.delete(" ")
	l = a.length
	count = 0
	l.times do
		if return_odds			
			array << a[count] if count.odd?
			
		else
			array << a[count] if count.even?
		end
		count += 1
	end
	array.join
	#a.map { |i| x = i if a.at(i.index).odd? }
end
