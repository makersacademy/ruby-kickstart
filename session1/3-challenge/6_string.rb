# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#
# odds_and_evens("abcdefg",true)    # => "bdf"
# odds_and_evens("abcdefg",false)   # => "aceg"



def odds_and_evens(string, return_odds)

evens = []  # => []
odd = []    # => []

string.split('').each_with_index do |item,index|  # => ["a", "b", "c", "d", "e", "f", "g"]
    if index.even?                                # => true, false, true, false, true, false, true
  evens << item                                   # => ["a"], ["a", "c"], ["a", "c", "e"], ["a", "c", "e", "g"]

else odd << item  # => ["b"], ["b", "d"], ["b", "d", "f"]

    end  # => ["a"], ["b"], ["a", "c"], ["b", "d"], ["a", "c", "e"], ["b", "d", "f"], ["a", "c", "e", "g"]
  end    # => ["a", "b", "c", "d", "e", "f", "g"]

if return_odds == true  # => false
  odd.join
else
  evens.join            # => "aceg"
end                     # => "aceg"

end

odds_and_evens "abcdefg", false  # => "aceg"
