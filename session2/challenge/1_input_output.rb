# Remember you can test this code with
#   $ rake 2:1

# Write a program that reads in two integers typed on the keybaord
# and outputs their sum, difference, and product
# 
# Standard input will be like "9 2\n" and will expect you to print
# "11\n7\n18\n" to standard output.

def sum_difference_product
  sum=0
  difference=0
  product=0

  array = (ARGF.read.split(" ")).map {|a| a.to_i}
  sum = array[0]+array[1]
  difference =array[0]-array[1]
  product= array[0]*array[1]
  $stdout << sum <<difference<<product
  end