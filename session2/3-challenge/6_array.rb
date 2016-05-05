# Write a method named prime_chars? which takes array of strings
# and returns true if the sum of the characters is prime. 
# 
# Remember that a number is prime if the only integers that can divide it with no remainder are 1 and itself. 
# 

# def is_prime?(input)
# 	# calculate if input is prime
# 	flag = true
# 	for i in (2..input/2)
# 		if (input%i == 0)
# 			flag = false
# 		end
# 	end
# 	flag
# end
# # require 'prime'
# def prime_chars? (arrstr)
# 	sum = 0
# 	if arrstr.length == 0
# 		return true
# 	end
# 	arrstr.each do |string|
# 		len_str = string.length
# 		sum = sum + len_str
# 	end
# 	# Now check if sum is prime
# 	is_prime?(sum)
# end

# prime_chars? ['abc']            # => true
# prime_chars? ['a', 'bc']        # => true
# prime_chars? ['ab', 'c']        # => true
# prime_chars? ['a', 'b', 'c']    # => true

# Examples of length four
# prime_chars? ['abcd']           # => false
# prime_chars? ['ab', 'cd']       # => false
# prime_chars? ['a', 'bcd']       # => false
# prime_chars? ['a', 'b', 'cd']   # => false

# # obj = Class.new
# print prime_chars?( ['a', 'bc'] )        # => true
# print prime_chars?( ['ab', 'c'] )         # => true
# print prime_chars?( ['a', 'b', 'c'] )     # , "\n"=> true
# print prime_chars?( ['abcd'] )           # => false
# print prime_chars?( ['ab', 'cd'] )       # => false
# print prime_chars?( ['a', 'bcd'] )       # => false
# print prime_chars?( ['a', 'b', 'cd'] )    # => false
# #len_str = arrstr.join(//).length`
# #sum = len_str`


# class integer
# def prime_chars?(arrstr)

# 	if arrstr.length == 0
# 		return true
# 	else
# 		len_str = arrstr.join(//).length
# 		sum = len_str
# 		return prime?(sum)
# 	end
# end

# def prime?(input)
# 	# calculate if input is prime
# 	flag = true
# 	for i in (2..input/2)
# 		if (input%i == 0)
# 			flag=false
# 		end
# 	end
# 	return flag
# end
# end

require 'prime'

def prime_chars?(arr)
    Prime.prime?(arr.join("").length.to_i)
end












		