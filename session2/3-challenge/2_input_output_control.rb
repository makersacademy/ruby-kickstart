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

def hi_hi_goodbye                                                                               #defines the method
  puts "Enter a number or bye"                                                                  #puts the instruction to the screen
  while (amount = gets.chomp) && (amount != "bye")                                              #starts a while loop base on the conditions and gets input
    amount_for_loop = amount.to_i                                                               #converts the input to an int
    amount_for_loop.times { print "hi " }                                                       #puts to the screen the word hi for the amount of times (uses a code block)
    puts                                                                                        #puts a line break
    puts "Enter a number or bye"                                                                #puts the instruction to the screen
  end                                                                                           #ends the while loop
  puts "Goodbye!"                                                                               #puts message to the screen if the condition for the while loop is not met
end                                                                                             #ends the method


=begin JOSH'S SOLUTION
def prompt
  puts 'Enter a number or bye'
end

def hi_hi_goodbye
  prompt
  while (line = gets) && (line !~ /bye/) # first is an assignment statement that returns a line or nil, and is thus boolean
    line.to_i.times { print 'hi ' }
    puts
    prompt
  end
  puts "Goodbye!"
end
=end

# This will just invoke the method if you run this program directly
# This way you can try it out by running "$ ruby 2_input_output_control.rb"
# but it will still work for our tests
hi_hi_goodbye if $0 == __FILE__