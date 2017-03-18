# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
  return_string = ''

  new_string = string.split(//) # =>
  if return_odds == true
    new_string.each_index do |item|
      if item.odd?
        return_string << new_string[item]
      end
    end
  else
    new_string.each_index do |item|
      if item.even?
        return_string << new_string[item]
      end
    end
  end


  return_string # =>
end

# puts odds_and_evens('abcde', true)   # FOR TESTING
