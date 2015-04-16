# Remember you can test this code with
#   $ rake 2:1

# Write a program that reads in two integers typed on the keybaord
# and outputs their sum, difference, and product
#
# Standard input will be like "9 2\n" and will expect you to print
# "11\n7\n18\n" to standard output.

def sum_difference_product
  # integer1 = $stdin.gets.chomp.to_i
  # integer2 = $stdin.gets.chomp.to_i
integer1, integer2 = gets.split.map { |num| num.to_i }
 puts integer1 + integer2
 puts integer1 - integer2
 puts integer1 * integer2
 
 #puts "#{sum}\n#{difference}\n#{product}\n"
 #multiple solutions work but test not passing (even when copy solution)
end

sum_difference_product