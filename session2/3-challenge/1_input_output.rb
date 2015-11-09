# Remember you can test this code with
#   $ rake 2:1

# Write a program that reads in two integers typed on the keybaord
# and outputs their sum, difference, and product
#
# Standard input will be like "9 2\n" and will expect you to print
# "11\n7\n18\n" to standard output.

def sum_difference_product
 puts "input number"
 n1=gets.chomp
 puts "input second number"
 n2=gets.chomp
 
 puts n1.to_i+n2.to_i
 
 if n1.to_i>=n2.to_i
     puts n1.to_i-n2.to_i
 else
     puts n2.to_i-n1.to_i
 end
 n1.to_i*n2.to_i
  
end
