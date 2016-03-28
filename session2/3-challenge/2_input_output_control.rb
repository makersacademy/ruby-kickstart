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

puts "Enter a number"
while userinput = gets
  break if userinput.chomp == "bye"
  userinput.to_i.times do
      print "hi "
    end
  puts
  puts "Enter a number"
end
puts "goodbye"

end










# This will just invoke the method if you run this program directly
# This way you can try it out by running "$ ruby 2_input_output_control.rb"
# but it will still work for our tests
hi_hi_goodbye if $0 == __FILE__



# notes: .to_i on a non-numeric string returns 0
# I was worried that this was, while effective, a very clunky approach. Also,
# I knew I had issues before with prompting for user input while using a while loop
# i.e. avoiding repetition of the prompt. Comparing this to the solution, though,
# I seem to have done an okay job. Though I prefer the solution's approach
# in using a boolean rather than a break - I find the latter rather crass.
