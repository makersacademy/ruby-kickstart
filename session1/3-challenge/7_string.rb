# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"


def pirates_say_arrrrrrrrr(string)

return_string = "" # !> assigned but unused variable - return_string

r_character = false

string.chars.each do |char| 

return_string << char if r_character == true

r_character = (char.upcase == "R")

end

return_string

end

