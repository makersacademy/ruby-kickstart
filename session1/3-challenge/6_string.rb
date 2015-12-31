#final solution

# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#


def odds_and_evens(string, return_odds)
	s_array = string.chars.to_a
	if return_odds !=true
    s_array.values_at(* s_array.each_index.select {|i| i.even?}).join
else
	s_array.values_at(* s_array.each_index.select {|i| i.odd?}).join
end
end

puts odds_and_evens("abcdefg", true)





