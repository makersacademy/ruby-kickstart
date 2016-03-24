# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
    to_return = ""
    next_letter = false
    string.size.times do |letter|
       current_letter = string[letter]
       to_return << current_letter if next_letter
       next_letter = (current_letter == "r" or current_letter == "R")
       end
    to_return
       
end
