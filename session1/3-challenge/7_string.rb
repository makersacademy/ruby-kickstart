# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
    result = ""
    string = string.split("")
    string.each_index do |index_num|
        if (string[index_num] == "r" || string[index_num]  == "R") && string[index_num+1] != nil
            result << string[index_num+1]
        end
    end
    result
end
