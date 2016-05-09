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
# and when you think it is correct, you can test it with  $ rake 2:2 t

def prompt
  puts "Hello, please enter a number"
end

# Creates a method that simply puts the
# user prompt to the screen.

def hi_hi_goodbye

# Creates a method that does the following:

  prompt

# Calls the prompt method

  num = gets.chomp

# Creates variable and assigns it the user input

  while num != "bye"

# While the user input is not equal to "bye" run
# the below code

    puts "hi " * num.to_i

# Changes num variable from string to integer and
# puts "hi" to the screen that number of times

    prompt

# Calls the prompt method again

    num = gets.chomp

# Updates the num variable with the new user input
# and loop ends before restarting

  end

  puts "Goodbye"

# Puts "Goodbye" to the screen once while loop has
# ended

end

# This will just invoke the method if you run this program directly
# This way you can try it out by running "$ ruby 2_input_output_control.rb"
# but it will still work for our tests
hi_hi_goodbye if $0 == __FILE__