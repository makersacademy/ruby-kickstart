# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#


def pirates_say_arrrrrrrrr(string)
final_result = ""
string.split.each do |x|
  next if string[x] == "r" || string[x] == "R"
  final_result << string[x]
  end
  final_result
 end