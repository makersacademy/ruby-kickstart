# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
    
    str = string.partition(/[rR]/)[2]
    res = String.new
    
    while str != ''
        res += str[0]
        str = str.partition(/[rR]/)[2]
    end
    
    res
end
