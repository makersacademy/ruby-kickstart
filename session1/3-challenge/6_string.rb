# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds) # will pass a string and a boolean (true or false)
  to_return = "" # -------------------> creates an empty string
  #puts string.length # ---> takes the number of characters (as an integer). This is just a test line, to understand what string.length does
  string.length.times do |index| # and run the loop those many times. |index| stores the number of times the loop has run
    puts index # --> this will put the nr of times the loop as run, starting at 0
    puts string[index] # this will print the letter in the position of the index number

    if index.odd? && return_odds
      to_return << string[index]
    elsif index.even? && !return_odds
      to_return << string[index]
    end

  # recommended solution:
  #   next if return_odds && index.even? # (false, 2)->false: GETS OUT of the loop
  #   next if !return_odds && index.odd? # (false, 2)->(true, 2 is odd?)->(true && false)->false
  #   to_return << string[index] # to_return << string[2] Only gets out of the loop if on of the conditions is met.
  end
  to_return
end

puts odds_and_evens("abcd", false)
