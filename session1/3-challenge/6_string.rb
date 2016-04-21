# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)         #defines the method and params
  answer = ""                                   #sets up a blank variable
  string.length.times do |count|                  #size of string time for the loop
    next if return_odds && count.even?          #checks if return is true AND count value is even also
    next if !return_odds && count.odd?          #checks if return is not true AND count value is odd also
    answer << string[count]                     #concats the answer
  end                                           #ends the loop
  answer                                        #returns the answer
end                                             #ends the method