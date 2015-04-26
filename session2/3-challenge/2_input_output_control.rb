# Prompt the user for a number, then read it in and print out "hi" that many times
# Repeat this process until the user submits "bye", then say "goodbye" and end the program

def hi_hi_goodbye 
  print "Please enter a number between 1 and 10, or 'bye': "
  input = gets.chomp
  if input == 'bye'
    print "goodbye\n"
    return
  else
    input = input.to_i
    print "hi\n" * input
  end
 hi_hi_goodbye
end
 
# This will just invoke the method if you run this program directly
# This way you can try it out by running "$ ruby 2_input_output_control.rb"
# but it will still work for our tests
hi_hi_goodbye if $0 == __FILE__