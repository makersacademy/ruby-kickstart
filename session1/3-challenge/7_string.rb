# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  letter_to_return = ""
  string.each_char.with_index do |character, index|
    if character == "r" || character == "R"
      if string[index+1] != nil
        letter_to_return << string[index+1]
      end
    end
  end
  letter_to_return
end
