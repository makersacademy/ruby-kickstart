# Remember you can test this code with
#   $ rake 2:1

# Write a program that reads in two integers typed on the keybaord
# and outputs their sum, difference, and product
#
# Standard input will be like "9 2\n" and will expect you to print
# "11\n7\n18\n" to standard output.

def sum_difference_product
    input = gets.chomp                     # getting input and removing \n
    a, b = input.split.collect{|x| x.to_i} # makes two integers out of input and assigns them to 'a' and 'b'
    sum = a + b
    dif = a - b
    pro = a * b
    print "#{sum}\n#{dif}\n#{pro}\n"
end