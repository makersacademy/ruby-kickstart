# Prompt the user for a number, then read it in and print out "hi" that many times
#
# Repeat this process until the user submits "bye", then say "goodbye" and end the program
# HINT: Check out example 2 if you get stuck

def hi_hi_goodbye
  puts "Please give me a number"
  number = gets.chomp
    until ['bye', 'Bye'].include? (number)
      puts "hi " * number.to_i
      puts "Please give me another number or say bye"
      number = gets.chomp
    end
    puts "goodbye"
end
  # until number == "bye"
  #   puts "bye"
  #   end
  # end


# puts "Please enter a number."
# number = gets.chomp
# puts "hi" * number.to_i
# puts "Please enter another number, or bid me farewell!"
# if answer == "Bye"  || "bye"
#   puts "Bye!"
# else
#   number = gets.chomp
# puts "hi" * number.to_i
# end

# puts "Hi can I have a number please?"
# answer.gets.to_i
# puts answer * "Hi"
# end
# puts "Can I have another number please? Or bid me farewell!"
# until answer == "Bye"
# puts "Bye"
# end

# puts "Hi can I have a number please?"
# answer.gets
# while answer <= 100
# puts "Hi" * answer
# puts "Can I have another number please? Or bid me farewell!"
# until answer == "Bye"
# puts "Bye"
# end
# end
# def obtain_number(string, digit)
#   puts "Enter number or bye."
#   digit = gets
#   while digit.integer? true
#     puts "Hi" * digit
#   puts "Enter another number or bye"
# end
#  if false
#    puts "Goodbye"
#  end
# def greeting(answer)
#   puts "Number please or say goodbye"
#   answer.gets
#
# while answer != "bye" || "Bye"
#   puts answer.to_i * "Hi"
# else
#   puts "goodbye"
#   end
# end
#   number = gets.chomp
#   puts "thanks"
#   puts chomp.to_i * "hi"
#
#
#   def odds_and_evens(string, return_odds)
#   	new_string = ''
#   	return_odds == true ? n = 1 : n = 0
#       string.split('').each_with_index { |string, index| new_string << string if index % 2 == n }
#       return new_string
#   end
#
# # example:
# # PROGRAM: Enter a number
# # USER:    4
# # PROGRAM: hi hi hi hi
# # PROGRAM: Enter a number
# # USER:    2
# # PROGRAM: hi hi
# # PROGRAM: Enter a number
# # USER:    bye
# # PROGRAM: goodbye
#
#
# # remember you can try your program out with              $ ruby 2_input_output_control.rb
# # and when you think it is correct, you can test it with  $ rake 2:2
#
# def hi_hi_goodbye
#   # your code here
#
# end
#
#
#
#
# # This will just invoke the method if you run this program directly
# # This way you can try it out by running "$ ruby 2_input_output_control.rb"
# # but it will still work for our tests
hi_hi_goodbye if $0 == __FILE__
