# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"


def pirates_say_arrrrrrrrr(string)
  to_return = ""  # this is the string that will be returned, we need to add to it
  add_next = false 
  string.size.times do |index| # so if the string was '3' long then it would 3 times, because you want it to go through the entire string as a loop
    current_char = string[index] # this will return each character every time you loop
    to_return << current_char if add_next # the << keeps adding, but the < keeps overriding. Because we have set add_next to false, it w
    add_next = (current_char == "r" || current_char == "R") # it returns the current character if it is 'r' or 'R'
  end
  to_return
end