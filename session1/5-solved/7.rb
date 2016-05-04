# MY ANNOTATED VERSION OF OFFICIAL SOLUTION

# Example worked through using the string "Rare"

def pirates_say_arrrrrrrrr(string)

# Defines a method that takes one argument.

  to_return = ""

# Creates a new variable and assigns it an empty string.

  add_next = false

# Creates a new variable with a boolean value, which is initially set to 'false' as we will never add the first character (in this case 'R') to the output because the first character of any string never follows an 'r' or anything else!

  string.size.times do |index|

# This sets up a loop.

    current_char = string[index]
    to_return << current_char if add_next
    add_next = (current_char == "r" || current_char == "R")
  end
  to_return
end

# the second param here tells it to get a str of length 1. This is only necessary on 1.8. If you are on 1.9, just go with string[index]
