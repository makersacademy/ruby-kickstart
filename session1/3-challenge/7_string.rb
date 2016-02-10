# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
    chars = ""
    (string.size-1).times do |i|
        if string[i] == "r"
            chars << string[i.next]
            elsif string[i] == "R"
            chars << string[i.next]
        end
    end
    return chars
end