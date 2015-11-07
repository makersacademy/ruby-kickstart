# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  to_r = ""
  add_n = false
  string.size.times do |index|

    current_char = string[index]
    to_r << current_char if add_n
    add_n = (current_char == "r" || current_char == "R")

  end
  to_r
end
