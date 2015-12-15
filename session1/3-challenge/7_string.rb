# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  new_characters = ""
  add_next_char = false
  string.size.times do |index|
    current_character = string[index]
    new_characters << current_character if add_next_char
    add_next_char = (current_character == "r" || current_character == "R")
  end
  new_characters
end
