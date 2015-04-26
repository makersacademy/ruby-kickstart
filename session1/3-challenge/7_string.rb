# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  # we want to return a string so to_return is initially set to an empty string
  to_return = ""
  # This is to avoid returning everything by default (true)
  add_next = false
  # this takes the number of characters in the string and tells the block to run as many times as there are characters, taking x as a block parameter
  string.size.times do |x|
    # this sets a variable called current_char to the current character in the string
    current_char = string[x] 
    # this appends the current_char to our to_return string variable if add_next variable is true (currently false)
    to_return << current_char if add_next
    # this sets add_next equal to current_char if current_char is currently 'r' or 'R'
    add_next = (current_char == "r" || current_char == "R")
  end
  to_return
end

puts pirates_say_arrrrrrrrr("Katy Perry is on the radio!")