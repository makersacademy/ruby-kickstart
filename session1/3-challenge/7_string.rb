# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  new_string = []
  string.length.times do |index|
        current_character = string[index]
        next_character = string[index +1]
        if current_character == 'r'
          new_string << next_character
        end
        if current_character == 'R'
          new_string << next_character
        end
  end
  newer_string = new_string.join("")
  newer_string
end
