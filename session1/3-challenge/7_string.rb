# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
    arr = string.split('')
    index_arr = arr.size.times.select {|i| arr[i] == "r" || arr[i] == "R"}
    result_index = index_arr.map {|x| x + 1}
    result_index.map {|x| string[x]}.join('')
end
