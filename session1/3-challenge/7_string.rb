# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
<<<<<<< HEAD
#had to take a peak at the solution for clues!
  to_return = "" #we'll be 
  add_next = false
  string.size.times do |index| #here 'index' is already defined by ruby.
    current_char = string[index, 1] # the second param here tells it to get a str of length 1. This is only necessary on 1.8. If you are on 1.9, just go with string[index]
    to_return << current_char if add_next #this is saying that to_return becomes current_char if add_next (defined below) is true
    add_next = (current_char == "r" || current_char == "R") #add_next is defined as true if current_char is 'r' or 'R'
  
  end
  puts to_return
end




pirates_say_arrrrrrrrr("are you really learning Ruby?")
pirates_say_arrrrrrrrr("Katy Perry is on the radio!")
pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")
pirates_say_arrrrrrrrr("Hello, Keith")
=======

end
>>>>>>> c6e3db68b1696c9b1ce9890d9a36cc8d971f72ab
