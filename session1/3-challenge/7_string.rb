# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"


def pirates_say_arrrrrrrrr(string)
  letters = string.split("")
  new_letters = []
  letters.each.with_index do |x, i|
    if x == "r" || x == "R"
      new_letters << letters[i + 1]
    end
  end
   7new_letters.join
end
