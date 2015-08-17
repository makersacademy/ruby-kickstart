# Remember you can test this code with
#   $ rake 2:1

# Write a program that reads in two integers typed on the keybaord
# and outputs their sum, difference, and product
#
# Standard input will be like "9 2\n" and will expect you to print
# "11\n7\n18\n" to standard output.

def sum_difference_product
  puts "Give me some integers"
  ints = $stdin.gets.chomp

  arr = ints.split(/ /).map { |s| s.to_i }

  new_arr = []

  arr.each_slice(2) do |x,y| 
  	new_arr << x + y
  	new_arr << x - y
  	new_arr << x * y
  end
  
  puts new_arr[0].to_s
  puts new_arr[1].to_s
  puts new_arr[2].to_s
end

sum_difference_product