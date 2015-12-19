# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)

  letters = string.split("")
  output = ""

  letters.each_with_index do |x, i|
    output << letters[i+1] if x.downcase == "r" && i+1 < letters.length
  end

  output

end
