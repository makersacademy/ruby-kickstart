# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)

		letters = string.split('')
		return_odds == true ? letters.select.with_index { |a, i| i.odd? }.join('') : letters.select.with_index { |a, i| i.even? }.join('')
		
end

puts odds_and_evens('blah blah blah', true)
puts odds_and_evens('blah blah blah', false)