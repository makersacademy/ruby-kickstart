# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
   letters = string.split(//)

   if return_odds
      letters.values_at(* letters.each_index.select {|i| i.odd?}).join.to_s
   else
     letters.values_at(* letters.each_index.select {|i| i.even?}).join.to_s
   end

end

puts odds_and_evens("Simon", true) # => "io"
puts odds_and_evens("Simon", false) # => "Smn"
