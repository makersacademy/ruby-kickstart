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

def user_input
    puts "Enter a number or bye"
    end

def hi_hi_goodbye
    puts "Enter a number or bye"
    while true
        input = gets.chomp
        if input = Integer(input) rescue nil
            puts "hi " * input
            else input == "bye"
           puts "goodbye"
           break
            end
        user_input
        end
    end
    




