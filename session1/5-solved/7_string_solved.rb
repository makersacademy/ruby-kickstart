# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  # Create a variable to_return containing an empty string
  to_return = ""
  # Create a variable add_next and set it equal to false
  add_next = false
  # take the string, find the character length and iterate over each doing the following
  string.size.times do |index|
    # Create a varaible which takes the string and select the current character
    current_char = string[index,1] # the second param here tells it to get a str of length 1. This is only necessary on 1.8. If you are on 1.9, just go with string[index]
    # push the next character as long as it satisfies add_next
    to_return << current_char if add_next
    # add_next is equal to the current_char equalling r or R
    add_next = (current_char == "r" || current_char == "R")
  end
  # call the to_retun variable
  to_return
end
