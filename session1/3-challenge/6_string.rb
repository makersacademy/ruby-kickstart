# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
array = string.split("")
count = 0
even_array =[]
odd_array = []
  array.each { |n|
     if count % 2 == 0
        even_array << n
        count += 1
     elsif count % 2 == 1
        odd_array << n
        count += 1
     end
     }

if return_odds == false
  even_array.join("")
elsif return_odds == true
  odd_array.join("")
end

end
