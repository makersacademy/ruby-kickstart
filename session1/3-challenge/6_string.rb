# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string,odd)
  stringbin = ""
  if odd
    string.chars.each_index do |index|
    next if index.even?
    stringbin << string[index].to_s
    end
  else
    string.chars.each_index do |index|
    next if index.odd?
    stringbin << string[index].to_s
    end
  end
  p stringbin
end

odds_and_evens("abcdefg",false)

