# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
  input_string = string.split("")
  output_string = Array.new

  if return_odds
    count = 1
    while count <= input_string.length
      output_string << input_string[count]
      count +=2
    end
  else
    count = 0
    while count <= input_string.length
      output_string << input_string[count]
      count +=2
    end
  end
  output_string.join("")
end
