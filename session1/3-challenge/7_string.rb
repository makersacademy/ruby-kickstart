# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  i = 0
  array_of_characters = []
  while i <= string.length
    array_of_characters.push(string[i + 1]) if string[i] == 'r' || string[i] == 'R'
    i += 1
  end
  array_of_characters.join('')
end
