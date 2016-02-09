# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  ch_array = string.split("")
  output = []
  ch_array.each_with_index do |character, index|
    if character.downcase == "r"
      output << ch_array[index+1]
    end
  end
  return output.join
end
