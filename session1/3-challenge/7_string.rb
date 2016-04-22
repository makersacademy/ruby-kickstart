# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  new_string = ""
  add_next = false
  string.length.times do |index|
    character = string[index]
    new_string << character if add_next
     add_next = (character == "r" || character == "R")

  end
  new_string

end
