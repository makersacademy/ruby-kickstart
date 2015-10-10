# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
  odds = []
  evens = []
  if return_odds
      string.chars.each_with_index do |l, i|
        odds.push(l) if i.odd?
    end
    odds.join
  else
    string.chars.each_with_index do |l, i|
        evens.push(l) if i.even?
    end
    evens.join
  end
end