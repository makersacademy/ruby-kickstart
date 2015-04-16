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
	puts "You've gone to visit grandma, you start the conversation"
	input = $stdin.gets.chomp
	until input == "BYE"
		input = $stdin.gets.chomp
		if input == input.downcase
			puts "HUH?! SPEAK UP, SONNY!"
		elsif input == input.upcase && input != "BYE"
			puts "NO, NOT SINCE 1938!"
		end
	end	
end

deaf_grandma

#steps
	#ask for some user input (e.g. speak to grandma) and create variable to store
	#test user input -> if capitals then get "NO, NOT SINCE 1938" if not then "HUH?! SPEAK UP"
	#continue to ask for input until get "BYE"
	# use an until statement e.g. until input = "BYE" if 



# This will call your code so you can run it from the terminal.
# But not call it otherwise, so that it will work with our tests.
# deaf_grandma if $0 == ruby 9_input_output_logic_string
