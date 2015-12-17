# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)

  result = ""

  string.length.times do |current|
    next if string[current] == 0 # skip first character
    if string[current] == "r" || string[current] == "R"
      if string[current+1] != nil # make sure we don't exceed the last character
        result << string[current+1]
      end
    end
  end
return result
end
