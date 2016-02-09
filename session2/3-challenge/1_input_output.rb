# Remember you can test this code with
#   $ rake 2:1

# Write a program that reads in two integers typed on the keybaord
# and outputs their sum, difference, and product
#
# Standard input will be like "9 2\n" and will expect you to print
# "11\n7\n18\n" to standard output.

def sum_difference_product
  # your code goes here
  numbers = gets.chomp
  num_arr = numbers.split(" ")
  first = num_arr[0].to_i
  second = num_arr[1].to_i
  print "#{first+second}\n#{first-second}\n#{first*second}\n"
end
