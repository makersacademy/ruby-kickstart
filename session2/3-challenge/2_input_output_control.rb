# Prompt the user for a number, then read it in and print out "hi" that many times
# Repeat this process until the user submits "bye", then say "goodbye" and end the program
def prompt
print "Please enter a number (1-10), or 'bye': "
end

def hi_hi_goodbye 
prompt
  while prompt != 'bye'

    prompt = gets.chomp.to_i
      prompt.times do
      puts "hi"
    end
    
   end
puts "Goodbye!"
end

# This will just invoke the method if you run this program directly
# This way you can try it out by running "$ ruby 2_input_output_control.rb"
# but it will still work for our tests
hi_hi_goodbye if $0 == __FILE__