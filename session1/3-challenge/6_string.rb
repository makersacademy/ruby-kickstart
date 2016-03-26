# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
  string_array = string.split(//)
  if return_odds 
    new_string = string_array.select {|x| string_array.index(x).odd?}
  else
    new_string = string_array.select {|x| string_array.index(x).even?}
  end
  return new_string.join('')
end

# Note: need to review this and understand why it's failing four tests only!