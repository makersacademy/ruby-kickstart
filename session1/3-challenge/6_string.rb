# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control


def odds_and_evens(string, return_odds)
  array = string.split(//)
  if return_odds == true
    new_odd_letters = array.select.each_with_index { |x, i| i.odd?}
    new_odd_letters.join("")
  elsif return_odds == false
  	new_even_letters = array.select.each_with_index { |x, i| i.even?}
    new_even_letters.join("")
  end
end