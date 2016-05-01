# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
    arr = string.chars
    new_arr = []
    
    arr.each_with_index do |ch,index|
        if ch == "r" || ch == "R"
            new_arr << string[index+1]
        end
    end
    new_arr.join
end

