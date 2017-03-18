# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

# def odds_and_evens(string, return_odds)
#   new_string = ""
#     string.length.times do |num|
#       if return_odds && num.odd?
#         new_string << num
#       elsif !return_odds && num.even?
#         new_string << string[num]
#       end
#     end
#     return new_string
#   end

# odds_and_evens([1,2,3,4,5,6,7,8,9], true)
# odds_and_evens(["abcdefg"], true)


def odds_and_evens(string, return_odds)
  to_return = ""
  string.size.times do |index|
    next if return_odds && index.even?
    next if !return_odds && index.odd?
    to_return << string[index]
  end
  to_return
end

odds_and_evens([1,2,3,4,5,6,7,8,9], true)
odds_and_evens(["abcdefg"], true)