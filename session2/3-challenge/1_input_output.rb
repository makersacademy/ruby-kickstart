# Remember you can test this code with
#   $ rake 2:1

# Write a program that reads in two integers typed on the keybaord
# and outputs their sum, difference, and product
#
# Standard input will be like "9 2\n" and will expect you to print
# "11\n7\n18\n" to standard output.

def sum_difference_product
  if ARGV.empty?
    input = gets.chomp.split
    puts input[0].to_i + input[1].to_i 
    puts input[0].to_i - input[1].to_i 
    puts input[0].to_i * input[1].to_i 
  else
   n1 = ARGV[0]
   n2 = ARGV[1]
   puts n1.to_i + n2.to_i
   puts n1.to_i - n2.to_i
   puts n1.to_i * n2.to_i
 end
end

sum_difference_product
