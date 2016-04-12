# Prompt the user for a number, then read it in and print out "hi" that many times
#
# Repeat this process until the user submits "bye", then say "goodbye" and end the program
# HINT: Check out example 2 if you get stuck

# example:
# PROGRAM: Enter a number
# USER:    4
# PROGRAM: hi hi hi hi
# PROGRAM: Enter a number
# USER:    2
# PROGRAM: hi hi
# PROGRAM: Enter a number
# USER:    bye
# PROGRAM: goodbye


# remember you can try your program out with              $ ruby 2_input_output_control.rb
# and when you think it is correct, you can test it with  $ rake 2:2

def user_prompt
	puts "Please enter a number or 'bye'."
end

def hi_hi_goodbye
	user_prompt
	user_input = gets.chomp
	while user_input != "bye"
		print "hi ".*(user_input.to_i)
		user_prompt
		user_input = gets.chomp
	end
	puts "Goodbye!"
end

#step1 prompt user for a number
#step2 print hi number amount of times
#step3 promt user for another number if user says bye end the programme 



# This will just invoke the method if you run this program directly
# This way you can try it out by running "$ ruby 2_input_output_control.rb"
# but it will still work for our tests
hi_hi_goodbye if $0 == __FILE__