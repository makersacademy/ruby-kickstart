# Remember you can test this code with
#   $ rake 2:1

# Write a program that reads in two integers typed on the keybaord
# and outputs their sum, difference, and product
#
# Standard input will be like "9 2\n" and will expect you to print
# "11\n7\n18\n" to standard output.

def sum_difference_product
 
  parts = gets.split
  first_num = parts[0].to_i
  second_num = parts[1].to_i
  sum = first_num + second_num 
  product = first_num * second_num
  difference = first_num - second_num

   puts "#{sum}\n #{difference}\n #{product}\n"
end

