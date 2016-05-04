# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
  array = string.split("")
  new_array = Array.new
  for i in 0..array.length do
    if i % 2 == 0 && return_odds == false
      new_array << array[i]
    elsif i % 2 != 0 && return_odds == true
      new_array << array[i]
    end
  end
  new_array.join
end

=begin
# Code not passing tests.

def odds_and_evens(string, return_odds)
  string = string.to_s.split("")
  if return_odds
    x = string.select {|char| string.index(char).odd? }
  else
    x = string.select {|char| string.index(char).even? }
  end
  x.join
end
=end
