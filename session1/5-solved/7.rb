# MY ANNOTATED VERSION OF OFFICIAL SOLUTION

# Example worked through using the string "Rare"

def pirates_say_arrrrrrrrr(string)

# Defines a method that takes one argument, a "string".

  to_return = ""

# Creates a new variable and assigns it an empty string.

  add_next = false

# Creates a new variable with a boolean value, which is initially set to 'false' as we will never add the first character (in this case 'R') to the output because the first character of any string never follows an 'r' or anything else!

  string.size.times do |index|

# This calculates the string size and uses the returned value to loop the block of code that many times.

# E.g. for "Rare" the string size is "4" so it will loop 4 times, i.e. over each character in the string.

    current_char = string[index]

# Creates a new variable which is initially set to the value of the current character.

# First iteration:
# => current_char = "R"

# Second iteration:
# => current_char = "a"

# etc

    to_return << current_char if add_next
# Updates to_return with the current_char only if add_next evaluates to true.

# First iteration:
# => to_return << "R" if false
# => do nothing because add_next is false;
# => to_return is still ""

# Second iteration:
# => to_return << "a" if true
# => add "a" to to_return because add_next is true

# etc

    add_next = (current_char == "r" || current_char == "R")
# Updates add_next to true or false.
# add_next will update to true if the current character is either "r" or "R", otherwise it will remain false.

# First iteration:
# => add_next = ("R" == "r" || "R" == "R")
# => add_next = (false || true)
# => add_next = true

# Second iteration:
# => add_next = ("a" == "r" || "a" == "R")
# => add_next = (false || false)
# => add_next = false

# etc

  end

  to_return

# Returns the final value of the to_return variable.

end

# the second param here tells it to get a str of length 1. This is only necessary on 1.8. If you are on 1.9, just go with string[index]

# http://stackoverflow.com/questions/31768481/for-a-given-string-return-the-next-character-after-every-letter-r-a-ruby for further solutions and explanation
