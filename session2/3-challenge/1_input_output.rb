# Remember you can test this code with
#   $ rake 2:1

# Write a program that reads in two integers typed on the keybaord
# and outputs their sum, difference, and product
#
# Standard input will be like "9 2\n" and will expect you to print
# "11\n7\n18\n" to standard output.

def sum_difference_product
  n = gets.chomp
  r = n.split
  a = r[0].to_i + r[1].to_i
  b = r[0].to_i - r[1].to_i
  c = r[0].to_i * r[1].to_i

  puts a
  puts b
  puts c
end
