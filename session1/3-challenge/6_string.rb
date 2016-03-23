# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)

array = string.split("")

array_even, array_odd = array.each_with_index.partition{|v|v[1].even?}.map{|v|v.map{|v|v[0]}}

if return_odds == true
  return array_odd.join

else
  return array_even.join

end
end