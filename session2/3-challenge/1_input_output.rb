# Remember you can test this code with
#   $ rake 2:1

# Write a program that reads in two integers typed on the keybaord
# and outputs their sum, difference, and product
#
# Standard input will be like "9 2\n" and will expect you to print
# "11\n7\n18\n" to standard output.

def sum_difference_product
  input = $stdin.gets.chomp
  i = input.split(' ').map {|a| a.to_i}
  
  sum = i[0] + i[1]
  diff = i[0] - i[1]
  prod = i[0] * i[1]

  print sum.to_s + "\n" + diff.to_s + "\n" + prod.to_s + "\n" 
end
