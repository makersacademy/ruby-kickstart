# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  to_return = ""
  add_next = false

  string.length.times do |index|
    current_char = string[index]

    if add_next == true
      to_return << current_char
    end

    if (current_char == "r" || current_char == "R")
      add_next = true
    else
      add_next = false
    end
 end

  # suggested solution.

  # string.size.times do |index|
  #   current_char = string[index]
  #   to_return << current_char if add_next # appends current_char if true
  #   add_next = (current_char == "r" || current_char == "R") # the conditional returns true or false and assigns that value to add_next
  #end
  to_return
end

puts pirates_say_arrrrrrrrr("pirates say arrrrrrrrr!")
