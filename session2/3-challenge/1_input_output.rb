# Remember you can test this code with
#   $ rake 2:1

# Write a program that reads in two integers typed on the keybaord
# and outputs their sum, difference, and product
#
# Standard input will be like "9 2\n" and will expect you to print
# "11\n7\n18\n" to standard output.

def sum_difference_product
  # get input
  input = gets.chomp
  #split into array by space
  array = input.split(" ").map {|s| s.to_i}
  x = array[0]
  y = array[1]
  #output
  puts (x + y).to_s + "\n" + (x - y).to_s + "\n" + (x * y).to_s + "\n"  
end

# Wow I just checked the solution, I made it a lot harder than required...