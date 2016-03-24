#You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
    array = string.scan(/./)
    array2 = Array.new
    array3 = Array.new
    
	if return_odds 
      array.each_with_index {|x, index| array2 << x if index.odd?}
	  array2.join
	else
		array.each_with_index {|x, index| array3 << x if index.even?}
		array3.join
	end
end



