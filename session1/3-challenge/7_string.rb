#final solution

def pirates_say_arrrrrrrrr(string)
	return_string = Array.new
	array = string.chars
	x = 1
	array.each do |s|
		if s == "r" || s == "R"
			return_string << array[x]
		end
		x += 1		
	end
	return_string.join
end

puts pirates_say_arrrrrrrrr("reiss contains the letter r")