# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr

def pirates_say_arrrrrrrrr(string)
    after_arr = ""
    arr = string.split('')
    for i in (0...arr.length)
        if arr[i] == "r" or arr[i] == "R"
            after_arr << arr[i+1]
        end
    end
    puts after_arr
end

puts pirates_say_arrrrrrrrr("are you really learning Ruby?")
