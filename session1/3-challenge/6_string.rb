# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.

def odds_and_evens(string, return_odds)
# we want to return a string, which initially is set to an empty string in the variable to_return
  to_return = ""
# the following line checks the length of the string with .size, 
# and .times instructs the code to run the block for each index element for as many times as .size returned, i.e. for each character in the string and no more
  string.size.times do |index|

    next if return_odds && index.even?
    # if return_odds is true and the index element is even next if skips to the next element in the string, i.e. to the next odd character
    next if !return_odds && index.odd?
    # the bang infront means this is asking whether return_odds is not true and whether the index element is odd, and then skipping to the next even character
    to_return << string[index]
    # this appends the selected string elements to the to_return string variable
  end
  to_return
end
