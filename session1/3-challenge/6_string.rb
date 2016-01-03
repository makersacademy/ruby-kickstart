# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
  to_return = ''
  string.size.times do |index|
    next if return_odds && index.even?
    next if !return_odds && index.odd?
    to_return << string[index]
  end
  return to_return
end

=begin
I really struggled on what the logic of the question is... 
when you say 'characters', do you mean the odd index number (i.e elements in an array vs characters in a string?)

# why use size instead of length (and why using length...?)
# unsure why .times is included (and if needs to be included why the number of times is excluded - isn't that point of .times?)
# index refers to elements in an array...?  unsure why this is referenced as such when we are analysing a string... should we turn into an array?
# used next loop, could we have used while or unless...?
# and I would have approached using if and else statements, assessing whether string was true or false first, then running x2 blocks to return i) odd char and ii) even char
# spent way to long on this one... :(