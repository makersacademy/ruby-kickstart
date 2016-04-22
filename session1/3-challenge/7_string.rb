# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  char_after_r = ""
  char_return = false

  string.size.times do |grandad|
    current_char = string[grandad]
    char_after_r << current_char if char_return
    char_return = (current_char == "r" || current_char == "R")
  end
  char_after_r
end
