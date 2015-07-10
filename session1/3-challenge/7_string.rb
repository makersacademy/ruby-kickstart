# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  answer = ""
  add_next = false # because the first letter won't be added if it's r or not
  string.size.times do |index|
    current_char = string[index]
    answer << current_char if add_next # beginning false
    add_next = (current_char == "r" || current_char == "R") # change condition as it goes on to each letter most importantly after each R's!
  end

  answer
end
