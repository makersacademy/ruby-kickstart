# Remember you can test this code with
#   $ rake 2:1

# Write a program that reads in two integers typed on the keybaord
# and outputs their sum, difference, and product
#
# Standard input will be like "9 2\n" and will expect you to print
# "11\n7\n18\n" to standard output.

def sum_difference_product
  string = gets.chomp.to_s                            # input our text as a string
  var1, var2 = string.split.map {|num| num.to_i}      # break our string, convert each part to integer var
  puts "#{var1+var2}\n #{var1-var2}\n #{var1*var2}\n" # make some math and output it
end