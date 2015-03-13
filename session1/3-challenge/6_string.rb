# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
  # We need to return a new string, so lets make an empty one first
  to_return = ""
  # iterate over the given string (size) number of times, where size is how long the string is
  string.size.times do |index|
    # Skip the current iteration if the boolean is true and we're on an even character
    next if return_odds && index.even?
    # Skip the current iteration if the boolean is false and we're on an odd character
    next if !return_odds && index.odd?
    # Push the current index/iteration in string into the empty string
    to_return << string[index]
  end
  # Return the final string
  to_return
end

=begin
  This is what it looks like without comments

  def odds_and_evens(string, return_odds)

    to_return = ""

    string.size.times do |index|
      next if return_odds && index.even?
      next if !return_odds && index.odd?
      to_return << string[index]
    end
    
    to_return

  end

=end
