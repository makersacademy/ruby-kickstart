# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

#MY FIRST ATTEMPT
# def odds_and_evens(string, return_odds)
# 	if return_odds == true
# 		string_array = string.split('')
# 		string_array.each_with_index do |v,i| 
# 										puts v if i % 2 == 1 # string_array.push doesn't work here upfront (even when add an empty array to push in to)
# 		end
# 	elsif return_odds == false
# 		string_array = string.split('')
# 		string_array.each_with_index do |v,i| 
# 										puts v if i % 2 == 0
# 		end
# 	else
# 		puts "Please put in a boolean value"
# 	end
# end

#MY ARRAY SOLUTION
def odds_and_evens(string, return_odds)
	string_array = string.split('')
	to_return = ''
	string_array.length.times do |index| 
			next if return_odds && index.even?
			next if !return_odds && index.odd?
			to_return << string_array[index]
	end
	return to_return
end

odds_and_evens("Stringy", true)
odds_and_evens("Stringy", false)


