# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

#find out whether the boolean is true
#if so write an expression that will collect all the odd characters in the string
#else if the boolean is false, write an expression to return even characters
#find out how to collect the odd and even characters?

def odds_and_evens(string, return_odds)
	#.chars returns an array
	#.select returns a new array containing elements for which the given block
	#returns a true value
	#.with_index produces the index along with each character in the array
	#.join("") on the end transforms the return value of the block into a string.
  	string.chars.select.with_index do |letter, index|
  		if return_odds 
  			index.odd?
  		else return_odds == false
  			index.even?
  		end
  	end.join("")
end