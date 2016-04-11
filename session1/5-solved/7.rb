def pirates_say_arrrrrrrrr(string)
  to_return = ""
  add_next = false
  string.size.times do |index|
    current_char = string[index,1] # the second param here tells it to get a str of length 1. This is only necessary on 1.8. If you are on 1.9, just go with string[index]
    to_return << current_char if add_next
    add_next = (current_char == "r" || current_char == "R")
  end
  to_return
end

# The way this works is the 'do' loop go to each letter, and adds if the add_next variable is true - it won't ever be true on the first letter (hence it is set to false to start, and at the end of the block it will be set to true if the current character is an r, so when the loop moves on to the character at the next index, add_next will be true and so the character is added onto the to_return string to be returned. )
