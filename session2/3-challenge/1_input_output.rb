# Remember you can test this code with
#   $ rake 2:1

# Write a program that reads in two integers typed on the keybaord
# and outputs their sum, difference, and product
#
# Standard input will be like "9 2\n" and will expect you to print
# "11\n7\n18\n" to standard output.


  # your code goes here
  
def sum_difference_product 
integers =  gets.chomp
array = integers.split.map {|x| x.to_i}
puts array[0] + array[1]
puts array[0] - array[1]
puts array[0] * array[1]
 
end

#def sum_difference_product
#x,y = gets.split.map {|number| number.to_i}
#puts x+y
#puts x-y
#putx x*y
#end

