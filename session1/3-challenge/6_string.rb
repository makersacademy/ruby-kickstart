# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
    ary = string.chars
    
    odd_even = return_odds ? 0 : 1
    
    letters = String.new
    
    for i in 0...ary.length
        letters << ary[i] unless i % 2 == odd_even
    end
    
    letters
end