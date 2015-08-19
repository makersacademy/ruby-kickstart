# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  stringbin = ""
  string.chars.each_index do |index|
    if string[index].upcase == "R"
      stringbin << string[index+1].to_s
    end
  end
  p stringbin
end

pirates_say_arrrrrrrrr "are you really learning Ruby?"
pirates_say_arrrrrrrrr "Katy Perry is on the radio!"
pirates_say_arrrrrrrrr "pirates say arrrrrrrrr"