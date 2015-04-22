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

<<<<<<< HEAD
#requires an if/else statement!
#  we get a line from the user, if it's in lower case or if they've not writen anything, puts "HUH??" and if in capital letters, puts "NO, NOT SINCE..."
# 

def deaf_grandma
  while line = gets.chomp
    break if line == "BYE"
    if line == line.upcase && line != ""
      puts "NO, NOT SINCE 1938!"
    else
      puts "HUH?! SPEAK UP SONNY!"
    end
  end
end





=======
def deaf_grandma

end
>>>>>>> c6e3db68b1696c9b1ce9890d9a36cc8d971f72ab





# This will call your code so you can run it from the terminal.
# But not call it otherwise, so that it will work with our tests.
deaf_grandma if $0 == __FILE__
