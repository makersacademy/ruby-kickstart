# Remember you can test this code with
#   $ rake 2:1

# Write a program that reads in two integers typed on the keybaord
# and outputs their sum, difference, and product
#
# Standard input will be like "9 2\n" and will expect you to print
# "11\n7\n18\n" to standard output.

def sum_difference_product
  answer = gets.chomp
  array1 = answer.split(" ")
  sum = array1[0].to_i + array1[1].to_i
  diff = (array1[0].to_i - array1[1].to_i)
  prod = (array1[0].to_i * array1[1].to_i)
    puts sum
    puts diff
    puts prod
end