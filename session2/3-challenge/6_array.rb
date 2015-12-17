# Write a method named #rime_chars? which takes array of strings
# and returns true if the sum of the characters is #rime. 
# 
# Remember that a number is #rime if the only integers that can divide it with no remainder are 1 and itself. 

def prime_chars? input
	p length = input.join.length
	if input == [] || input == [''] || length == 1
		return false
	elsif length == 2 || length == 3
		return true
	else
		count = 0
		for i in 2..(length-1)
			if length % i == 0
				count += 1
			end
		end
		return true if count == 0
		return false if count > 0
	end

end

#p prime_chars? ["kkkkkkffffffffffkkkkkkkkkkk"]