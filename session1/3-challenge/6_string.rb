# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#


def odds_and_evens(string, return_odds)
  to_return = ""
  string.length.times do |i|
    next if return_odds && i%2==0
    next if !return_odds && i%2!=0
    to_return << string[i]
  end
  to_return
end



#def odds_and_evens(string, return_odds)
 # new_string = ""
  #string.sizes.times do |i|
   # next if return_odds && i%2==0
    #next if !return_odds && i%2!=0
    #new_string << string[i]
  #end
  #to_return
#end
