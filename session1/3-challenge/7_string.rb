# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)

  new_string = ""

string.length.times { |char| new_string << string[char + 1] if (string[char] == "r" || string[char] == "R") && string[char+1] != nil }

  new_string

end



p pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
p pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
p pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"
