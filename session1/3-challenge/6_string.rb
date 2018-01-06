# frozen_string_literal: true

# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
  array = string.chars
  if return_odds == false
    return array.values_at(* array.each_index.select(&:even?)).join.to_s
  else
    return array.values_at(* array.each_index.select(&:odd?)).join.to_s
  end
end
