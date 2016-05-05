# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

=begin
def odds_and_evens(string, return_odds)
  return_odds == true ? n = 1 : n = 0
  result = []
  string.split('').each_slice(2){|a, b| result << [a, b]}
  result.map{|x| x[n]}.join
end
=end

def odds_and_evens(string, return_odds)
  return_odds == true ? n = 1 : n = 0
  result = ''
  string.split('').each_with_index{|x, index| result << x if index % 2 == n}
  result
end
