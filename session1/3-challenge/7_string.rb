# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  array = string.split("")
  lastLetter = ""

  array.each_with_index do |letter, index|
    if (index + 1) < array.length
    if letter == "r" || letter == "R" 
      lastLetter = lastLetter + array[index + 1]
      end
    end
  end
  lastLetter
end