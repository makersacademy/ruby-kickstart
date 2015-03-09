# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
	return_this = ""
  	string.size.times do |x|
    	next if return_odds == true && x % 2 == 0
    	next if return_odds == false && x % 2 != 0
    	return_this << string[x]
  	end
  	return_this
end

=begin

Code using arrays and not operating on strings, using each. failed to work...

end
def odds_and_evens(string, return_odds)
	array = string.split(//)
	returns = ""
	if return_odds == true
		array.each do |x|
			if x % 2 == 0 
				0
			else
				returns << x
			end
			return returns
		end
	else
		array.each do |x|
			if x % 2 == 0
				returns << x
			else
				0
			end
			return returns
		end
	end
end
=end 

=begin
I thought odd meant I'd be given numbers inside strings! Partial code preserved for posterity	
end
def odds_and_evens(string, return_odds)
	array = string.scan(/\d+/)
	array1 = array.map(&:to_i)
	if return_odds == true
		array1.each do |x|
			if x % 2 == 0
				nil
			else 
				odds << x
			return odds 
		end
	end
	else 
		array1.each do |x|
			if x % 2 == 0 
				evens << x
			else
				nil
			return evens
			end
		end
	end
end
=end
