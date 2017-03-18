# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

# def odds_and_evens(string, return_odds)

# array = string.chars.to_a

#  if return_odds == true
#    array.each_with_index do |item, index|
#      next if index.odd?
#      print item
#    end
#  elsif return_odds == false
#    array.each_with_index do |item, index|
#      next if index.even?
#      print item
#    end
#  end
#  puts
# end

def odds_and_evens(string, return_odds)
  to_return = ""
  string.size.times do |index|
    next if return_odds && index.even?
    next if !return_odds && index.odd?
    to_return << string[index]
  end
  to_return
end

puts odds_and_evens("this is a string", true)
