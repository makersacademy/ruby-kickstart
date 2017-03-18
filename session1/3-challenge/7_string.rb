# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
    array1 = []
    letters = string.split("")
    letters.each_index do |i|
        array1.push(letters[i + 1]) if (letters[i] == 'r' || letters[i] == 'R')
    end
    return array1.join("")
end