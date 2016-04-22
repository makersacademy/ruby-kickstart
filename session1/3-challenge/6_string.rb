# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
  ch_array = string.split("")
  output = []
  if return_odds == true
    ch_array.each_with_index do|character, index|
      if index.odd?
        output << ch_array[index]
      end
    end
  else
    ch_array.each_with_index do |character, index|
      if index.even?
        output << ch_array[index]
      end
    end
  end
  return output.join
end
