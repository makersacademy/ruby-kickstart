# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

# This is as far as I got before having to look at the answers
# def odds_and_evens(string, return_odds)
#   a = [*string]
#   if return_odds
#     a.values_at(* a.each_index.select {|s| s.odd?}).join.to_s
#   else
#     a.values_at(* a.each_index.select {|s| s.even?}).join.to_s
#   end
# end

# I can follow & understand the answer below but would not have got it myself
def odds_and_evens(string, return_odds)
  to_return = ""
  string.size.times do |index|
    next if return_odds && index.even?
    next if !return_odds && index.odd?
    to_return << string[index]
  end
  to_return
end
