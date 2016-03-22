# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)                                        #defines a method with 1 parameter
  answer = ""                                                             #sets up a blank variable for the answer
  add_next_letter = false                                                 #sets up a variable with false
  string.length.times do |count|                                          #finds length of string and creates a loop to work that many times
    the_character = string[count]                                         #puts the count character into the the_character
    answer << the_character if add_next_letter                            #appends the answer if
    add_next_letter = (the_character == "r" || the_character == "R")      #adds in next letter if the next character is R or R.
  end                                                                     #ends the loop
  answer                                                                  #returns the answer
end                                                                       #ends the method


