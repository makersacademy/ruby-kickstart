# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
    new_string = ""
    add = false
    string.each_char.with_index do |c, index|
    	char = string[index]
    	add ? new_string << c : new_string << ""
    	add = (char == "r" || char == "R")
    end
    new_string
end


