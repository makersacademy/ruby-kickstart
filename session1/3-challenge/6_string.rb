# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control



def odds_and_evens(string, return_odds)
  return "#{string.split("").select.with_index { |e, index| index % 2 != 0 }.join("")}" if return_odds # returns odd characters
  return "#{string.split("").select.with_index { |e, index| index % 2 == 0 }.join("")}" if !return_odds # returns even characters
end

#Alternate implementations:
# no: 1
# if return_odds
# return "#{string.split("").select.with_index { |e, index| index % 2 != 0 }.join("")}" # returns odd characters
# else
# return "#{string.split("").select.with_index { |e, index| index % 2 == 0 }.join("")}"  # returns even characters
# end

# no: 2
# newstring = ""
# return string.split("").select.with_index do |e, index|
# newstring << "#{string[index]}" if return_odds  && (index % 2 != 0) #returns odd chars
# newstring << "#{string[index]}" if !return_odds && (index % 2 == 0 ) #returns even chars
# end
#
# return newstring
