# Remember you can test this code with
#   $ rake 2:1

# Write a program that reads in two integers typed on the keybaord
# and outputs their sum, difference, and product
#
# Standard input will be like "9 2\n" and will expect you to print
# "11\n7\n18\n" to standard output.

def sum_difference_product
	array1 = gets.split.map(&:to_i)
	puts array1[0] + array1[1]
	puts array1[0] - array1[1] 
	puts array1[0] * array1[1]
end

#Step 1 Prompt for input "A B\n"
#Step 2 Create array to store input
#Step 3 Store input in array
#Step 4 Create new array for output 
#Step 5 Add 2 inputs => store in array 2 A
#Step 6 Difference 2 inputs => store in array 2 B
#Step 7 Multiply 2 inputs => store in array 2 C
#Step 8 output in correct format  => pints "A\nB\nC\n"

