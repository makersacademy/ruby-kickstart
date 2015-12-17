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

def deaf_grandma
	#input = "Hello"
	input = gets.chomp
	invalid_response = "HUH?! SPEAK UP, SONNY!"
	correct_response = "NO, NOT SINCE 1938!"
	invalid = input.scan(/[a-z]/).length > 0 || input == ""
	correct = input.scan(/[A-Z]/).length == input.scan(/[a-zA-Z]/).length
	bye = input == "BYE" ? true : false
	case 
	when correct && bye then return ""
	when correct then correct_response; deaf_grandma
	when invalid then invalid_response; deaf_grandma
	end
end

p deaf_grandma





# This will call your code so you can run it from the terminal.
# But not call it otherwise, so that it will work with our tests.
deaf_grandma if $0 == __FILE__
