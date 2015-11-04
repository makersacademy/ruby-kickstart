# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
    pirate_string = ""
    letters = string.split("")
    letters.each_with_index do |letter, i|
      if letter == "r" || letter == "R"
        pirate_string << letters[i + 1] unless letters[i + 1].nil?
      end
   end
   pirate_string
end