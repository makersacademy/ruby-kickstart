# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

<<<<<<< HEAD


def odds_and_evens(string, return_odds)
#Turn string into an array?
  string_to_array = string.split("")
    if return_odds == true
#Return new string with all odd characters (indices 0, 2, 4...)
#Create new variable odd_characters that finds the odd characters in this array (remember we start at 0 if we want the first character!! So we use ".even?", not ".odd?" for this :P) 
      odd_characters = string_to_array.values_at(* string_to_array.each_index.select {|i| i.even?})   
      puts odd_characters.join("")
    else
#Return new string with even characters (indices 1, 3, 5...)
#Similar to above, but amend for finding even characters
      even_characters = string_to_array.values_at(* string_to_array.each_index.select {|i| i.odd?})   
      puts even_characters.join("")
    end
end


odds_and_evens("Hello",true)
odds_and_evens("Hello",false)
odds_and_evens("123456789",true)
odds_and_evens("123456789",false)
odds_and_evens("Yaobuc dsemfeglhlj!",true)
=======
def odds_and_evens(string, return_odds)

end
>>>>>>> c6e3db68b1696c9b1ce9890d9a36cc8d971f72ab
