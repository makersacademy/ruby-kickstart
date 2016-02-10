# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
# 
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
# 
# odds_and_evens("abcdefg",true)    # => "bdf"
# odds_and_evens("abcdefg",false)   # => "aceg"
def odds_and_evens(string, return_odds)
  returns=""

  if return_odds == true
    string.each_char.with_index do |a,b|
      if b.odd?
        returns << a
      end
    end
  else
     string.each_char.with_index do |a,b|
      if b.even?
        returns << a
      end
    end
  end
  return returns
end
