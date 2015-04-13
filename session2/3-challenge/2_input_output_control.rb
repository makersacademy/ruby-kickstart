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

def hi_hi_goodbye
  # your code here
  puts "Please enter a number"
  input = nil

  while input != "bye".to_i
  	input = $stdin.gets.chomp.to_i
  	puts "hi" * input
  	# break if input == "bye".to_i
  end
  puts "goodbye"

#   while times = $stdin.gets.chomp.to_i #why does example way of doing it not even take input
#   	puts "hi" * times
#   	break if times.chomp == "bye"
#   end
#   	puts "goodbye"
end

hi_hi_goodbye



# This will just invoke the method if you run this program directly
# This way you can try it out by running "$ ruby 2_input_output_control.rb"
# but it will still work for our tests
# hi_hi_goodbye if $0 == __FILE__end