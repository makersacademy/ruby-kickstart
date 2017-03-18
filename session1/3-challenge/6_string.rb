# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
  array = ""
  string.size.times do |l|
    if return_odds == true && l.odd?    
          array << string[l]
    elsif return_odds == false && l.even?
          array << string[l]
    end
end
  array
end

puts odds_and_evens("Richard", true)
puts odds_and_evens("Richard", false)