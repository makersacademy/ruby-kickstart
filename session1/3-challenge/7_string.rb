# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
    result = ""
    array = string.split("")
    array.each_index do |i|
        if array[i].downcase == "r"
            unless array[i+1].nil?
                result += array[i+1]
            end
        end
    end
    return result
end
