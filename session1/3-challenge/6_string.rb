# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
    #first we say if return_odds == true
    if return_odds
    #then collect(map) an array of numbers equal to the strings length
    # result [0,1,2,3,4,5,6,7]
    # then we want to do something over this array, so we say
    #for each index in the array, if the original string's index is odd, put it in the array.
    #We add compact to remove the nils, and join puts them into a single string
   (0..(string.length)).map {|index| string[index] if index.odd?}.compact.join
  else
    (0..(string.length)).map {|i| string[i] if i.even?}.compact.join
  end
end



