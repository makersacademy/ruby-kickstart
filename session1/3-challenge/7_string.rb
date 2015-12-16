# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  return_string = ""
  char_array = string.split(//)
  char_array.each_cons(2) { |char, next_char|
    if char.downcase == "r"
      return_string << char_array.to_s[next_char]
    end
  }
  return_string
end
