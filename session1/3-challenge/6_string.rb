# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
  odd_string = String.new #Define odd character string
  even_string = String.new #define even character string

  string.length.times do |current| # For loop iterates amount of times of string.length
    odd_string << string[current] if current % 2 == 1  #append to corresponding string odd/even each character
    even_string << string[current] if current % 2 == 0
  end
  return_odds ? odd_string:even_string
end
