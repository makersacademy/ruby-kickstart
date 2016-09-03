# Taken from http://pragprog.com/titles/fr_ltp/learn-to-program
#
# Write a Deaf Grandma program. Whatever you say to grandma (whatever
# you type in), she should respond with HUH?!  SPEAK UP, SONNY!, unless
# you shout it (type in all capitals). If you shout, she can hear you
# (or at least she thinks so) and yells back, NO, NOT SINCE 1938!
# You can't stop talking to grandma until you shout BYE.
#
# Hint: Don't forget about chomp! "BYE\n" is not the same as "BYE"
# (check the String cheatsheet if you need)
#
# remember, you can try your program by going to the terminal and typing   $ ruby 9_input_output_logic_string.rb
#
# example:
#
#
# USER:     $ ruby 9_input_output_logic_string.rb
# USER:     hi grandma.
# GRANDMA:  HUH?! SPEAK UP, SONNY!
# USER:     HI GRANDMA!
# GRANDMA:  NO, NOT SINCE 1938!
# USER:     bye
# GRANDMA:  HUH?! SPEAK UP, SONNY!
# USER:     BYE

#get user to type something in, chomp off the new line
#if the user doesn't type in all capitals, then the output is huh speak up
#if the user types in all capitals, the output is no not since 1938
#loop this until the user inputs BYE
def deaf_grandma
  #sets user_input as a new empty string object
  user_input = ""
  #until the user_input is equals to "BYE"
  #get the user_input and chomp off the new line
   until user_input == "BYE"
   user_input = gets.chomp
   #within the until loop, if the user input is not the same as user input all caps
   #or it is an empty string still, then put the following string
    if user_input != user_input.upcase  || user_input == ""
   	 puts "HUH?! SPEAK UP, SONNY!"
    #else if it is all caps, AND the input is NOT "BYE" then put the following
    elsif user_input == user_input.upcase && user_input != "BYE"
   	 puts "NO, NOT SINCE 1938!"
     #finally, if none of the above is true, then check for BYE, then which it breaks.
    else user_input == "BYE"
    end
   end

end

# This will call your code so you can run it from the terminal.
# But not call it otherwise, so that it will work with our tests.
deaf_grandma if $0 == __FILE__

