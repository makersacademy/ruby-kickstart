# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)

  letters = string.split("")
  new_string = ''

  letters.each_with_index do |x, index|
    new_string += x if index.odd? && return_odds
    new_string += x if index.even? && !return_odds
  end

  new_string

end

puts odds_and_evens("hello", true)
puts odds_and_evens("hello", false)
