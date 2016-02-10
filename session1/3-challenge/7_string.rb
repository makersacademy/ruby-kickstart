# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
    return_string = ""  #empty string to put every character after "r"
    (string.size-1).times do |index| # I minus the string size by 1 incase the last character of the string is "r", in which case string[index+1] would return nil
        return_string << string[index+1] if string[index] == "r" || string[index] == "R" #check to see if current character is "r" or "R", if true then adds the following character to empty string
    end
    return_string #returns string with characters after "r"/"R"
end
