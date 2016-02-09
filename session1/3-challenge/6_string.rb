# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
  new_string = []
  if return_odds == true
    new_string << string.chars.map.with_index { |c, i| c if i.odd?}
  else
    new_string << string.chars.map.with_index { |c, i| c if i.even?}
  end
new_string.join

end

=begin the somewhat scattered thought process:

+ if the boolean is true, produce a new string with all of the even characters in the original one.

+ if the boolean is false, produce a new string with all of the odd characters in the original one.

similarities:
conditional boolean, new string, odd or even characters to return
conditional boolean being return_odds == true

applicable methods ?: .map .inject .split .chars .join .each_char .with_index
  since .each_char will put out strings, it is necessary to couple that with another, maybe convert it into an array, which .chars, does, which produces indices, which are numerically accessible.

if return_odds
  put odd characters of string in new_string
else put even characters of string in new string.

need a new string.

new_string = []
in this case, string.split("") == string.chars
  so string.chars

Enumerable#map returns transforms elements in array (according to rules)
Enumerable#with_index (or .each_with_index) iterates over item (char in this case) and index
  .join (by default joins chars in string with "")
  .even? .odd? (conditional instruction?)
=end
