# Given a string, replace every instance of sad to happy
# 
# add_more_ruby("The clowns were sad.")         # => "The clowns were happy."
# add_more_ruby("The sad dad said sad stuff.")  # => "The happy dad said happy stuff."
# add_more_ruby("Sad times are ahead!")         # => "Happy times are ahead!"

def add_more_ruby(string)
 	string1 = string.gsub! 'sad', 'happy'
 	string2 = string.gsub! 'Sad', 'Happy'
	if(string2 != nil)
		return string2
	else
		string1
	end
end
