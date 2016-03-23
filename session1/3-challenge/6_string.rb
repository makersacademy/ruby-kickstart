# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)

splitsplat = string.split(//)
endresult = []

if return_odds
  splitsplat.to_enum.with_index(1).each do |i, index|
    if index % 2 == 0
    endresult << i
  end
end
end

if !return_odds
  splitsplat.to_enum.with_index(1).each do |i, index|
    if index % 2 != 0
    endresult << i
  end
end
end

solution = endresult.join
return solution
end

# wow, this one was a lot of fun. I have yet to compare the "official"
# solution to my own, but this was a great learning experience in terms
# of thinking out what needed to be done, and then fumbling around
# for the correct tools.
