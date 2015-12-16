# Remember you can test this code with
#   $ rake 2:1

# Write a program that reads in two integers typed on the keybaord
# and outputs their sum, difference, and product
#
# Standard input will be like "9 2\n" and will expect you to print
# "11\n7\n18\n" to standard output.

def sum_difference_product
	input = gets
	var1 = input.split(" ")[0].to_i
	var2 = input.split(" ")[1].match(/\d+/).to_s.to_i
	#puts "#{var1 + var2}\\n#{(var1 - var2).abs}\\n#{var1*var2}\\n"
	puts "#{var1 + var2}", "#{(var1 - var2)}", "#{(var1 * var2)}"
	  # your code goes here
  
end