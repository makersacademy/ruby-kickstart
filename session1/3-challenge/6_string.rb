# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
  arr = string.chars
  new_word =""
  arr.each_with_index do |character, index|
    if return_odds
      new_word += character if index.odd?
    else
      new_word += character if index.even?
    end
  end
  new_word
end


p odds_and_evens("abcdefgh", true)
p odds_and_evens("abcdefgh", false)
