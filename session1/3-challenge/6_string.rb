# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control.

def odds_and_evens(string, return_odds)
  even =
    string
      .split("")
      .select
      .each_with_index { |character, index| index.even? }
      .join

  # split string then select each char with the index of even.

  odd =
    string
      .split("")
      .select
      .each_with_index { |character, index| index.odd? }
      .join

  # split string then select each char with the index of odd.

  if return_odds == true
    return odd
  else
    return even
  end
end
