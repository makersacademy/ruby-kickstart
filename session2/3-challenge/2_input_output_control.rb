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

<<<<<<< HEAD
puts "Hi! Please input a whole number\:"

while number = gets.chomp
  def hi_hi_goodbye(number)
    number_not_string = number.to_i
    puts "hi "*number_not_string
  end
    hi_hi_goodbye(number)
    puts "Please enter another number, or \"bye\" if you want to exit\:"
break if number.chomp == "bye"
end
  puts "goodbye" 
=======
def hi_hi_goodbye
  # your code here

end

>>>>>>> c6e3db68b1696c9b1ce9890d9a36cc8d971f72ab



# This will just invoke the method if you run this program directly
# This way you can try it out by running "$ ruby 2_input_output_control.rb"
# but it will still work for our tests
<<<<<<< HEAD
#hi_hi_goodbye if $0 == __FILE__
=======
hi_hi_goodbye if $0 == __FILE__
>>>>>>> c6e3db68b1696c9b1ce9890d9a36cc8d971f72ab
