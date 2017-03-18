# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)

   even = []
   odd = []
   arr = string.each_char.to_a
   arr.each_index{|index| index % 2 == 0 ? even << arr[index] : odd << arr[index]}
  if return_odds == true
    return odd.join('')
  else
    return even.join('')
  end




end
puts odds_and_evens('ciao', true)
puts odds_and_evens('ciao', false)
