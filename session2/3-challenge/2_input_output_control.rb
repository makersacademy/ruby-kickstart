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

def prompt
  puts 'Enter a number or bye:'
end

def hi_hi_goodbye
  prompt
  while (line = gets) && (line != /bye/)
    line.to_i.times { puts 'hi'}
    puts prompt
  end
  puts 'Goodbye!'
end

=begin
line 27 is asigning the users imput to gets and while there is a string entered
it will equate to true.
The && boolean is then comparing it with the input not equalling bye: /bye/ searches
for the string 'bye' in the input.  If both are true then the next line is executed
If one is false ie no text input or input is 'bye' then line 31 is executed.



# This will just invoke the method if you run this program directly
# This way you can try it out by running "$ ruby 2_input_output_control.rb"
# but it will still work for our tests
hi_hi_goodbye if $0 == __FILE__
