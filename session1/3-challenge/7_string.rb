# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
    rtn=""
    arr=string.split("")
    arr.each_with_index {|x, i|if x=="r"||x=="R" then rtn.concat(arr[i+1]) unless arr[i+1] == nil end}
    rtn
  end

