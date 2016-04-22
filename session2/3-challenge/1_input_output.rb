# Remember you can test this code with
#   $ rake 2:1

# Write a program that reads in two integers typed on the keybaord
# and outputs their sum, difference, and product
#
# Standard input will be like "9 2\n" and will expect you to print
# "11\n7\n18\n" to standard output.

def sum_difference_product
  input = gets
  array = input.chomp.split(" ")
  array = array.map {|index| index.to_i }
  difference = (array[0] - array[1])
  sum = array.inject(0){|sum,x|sum+x}
  product = array.inject{|sum,x|sum*x}
  print "#{sum}\n#{difference}\n#{product}\n"
end
