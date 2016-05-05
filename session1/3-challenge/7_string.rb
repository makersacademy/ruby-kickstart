# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
    strArray = []
    string.split(//).each_with_index do |c, i|
      if c == "R" || c == "r"
        strArray << string[i + 1]
        next if c != "R" && c != "r"
      end
    end
    strArray.join("")
end
