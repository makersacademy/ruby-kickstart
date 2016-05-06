# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

# def odds_and_evens(string, return_odds)
#     if return_odds true
#       array = string
#     array.split("")
#     array.select.each_with_index { |_, i| i.odd? }.string
#   else
#     array.split("")
#     arrays.select.each_with_index { |_, i| i.even? }
#   end
# end

def odds_and_evens(string, return_odds)
	new_string = ''
	return_odds == true ? n = 1 : n = 0
    string.split('').each_with_index { |string, index| new_string << string if index % 2 == n }
    return new_string
end
