# Remember you can test this code with
#   $ rake 2:1

# Write a program that reads in two integers typed on the keybaord
# and outputs their sum, difference, and product
#
# Standard input will be like "9 2\n" and will expect you to print
# "11\n7\n18\n" to standard output.

def sum_difference_product

  puts "Enter two Integers separated by a space"
  number = gets.chomp
  
  ar = number.split(" ").map { |chr| chr.to_i}

  puts ar[0] + ar[1]
  puts ar[0] - ar[1]
  puts ar[0] * ar[1]
end
