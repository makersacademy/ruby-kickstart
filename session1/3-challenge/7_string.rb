# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  # This is as far as I got before checking the answer
  # to_return ""
  # string.each_char do |c|
  #   puts next if c == "r" || c == "R"
  # end
  to_return = ""
  add_next = false
  string.each_char do |c| # kept my .each_char method & c instead of index - still works
    current_char = string[c]
    to_return << current_char if add_next
    add_next = (current_char == "r" || current_char == "R")
  end
  to_return

end
