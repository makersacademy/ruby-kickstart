# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  final_result = ""
  looking_for_r = false
  string.length.times do |x|
    if looking_for_r == true
    final_result << string[x]
    end
    looking_for_r = string[x].include?("r") || string[x].include?("R")
  end
  final_result
end