# Remember you can test this code with
#   $ rake 2:1

# Write a program that reads in two integers typed on the keybaord
# and outputs their sum, difference, and product
#
# Standard input will be like "9 2\n" and will expect you to print
# "11\n7\n18\n" to standard output.

def sum_difference_product
  #puts "Type two numbers- hit return"
  user_input = gets
  int_one = user_input.split(" ")[0].to_i
  #puts "This is int_one #{int_one}"
  int_two = user_input.split(" ")[1].to_i
  #puts "This is int_two #{int_two}"
  print "#{int_one + int_two}\n#{int_one - int_two}\n#{int_one * int_two}"
end
sum_difference_product