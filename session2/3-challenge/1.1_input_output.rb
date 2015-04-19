def sum_difference_product

	puts "Enter first number:"
	num1 = gets
	puts "Enter second number:"
	num2 = gets
	
	sum = num1.to_i + num2.to_i
	diff = num1.to_i - num2.to_i
	mult = num1.to_i * num2.to_i
	
	puts "Sum: #{sum}"
	puts "Difference: #{diff}"
	puts "Multiplication: #{mult}"
	

end	


#sum_difference_product