# Remember you can test this code with
#   $ rake 2:1

# Write a program that reads in two integers typed on the keybaord
# and outputs their sum, difference, and product
#
# Standard input will be like "9 2\n" and will expect you to print
# "11\n7\n18\n" to standard output.

def sum_difference_product
  # your code goes here
  a = gets.split(" ")

  n1 = a[0].to_i

  n2 = a[1].to_i

  puts "#{n1 + n2}\n#{n1 - n2}\n#{n1 * n2}\n"
end

# puts sum_difference_product "3 5\n"