# Given a string, replace every instance of sad to happy
# 
# add_more_ruby("The clowns were sad.")         # => "The clowns were happy."
# add_more_ruby("The sad dad said sad stuff.")  # => "The happy dad said happy stuff."
# add_more_ruby("Sad times are ahead!")         # => "Happy times are ahead!"

puts "Please enter a sentence with the word sad in..."
string = gets.chomp

def add_more_ruby(string)
	
		if string.include? "sad"
		    string["sad"]= "happy"
		end
		if string.include? "Sad"
		    string["Sad"]= "Happy"
		end
    	
    string
    
end

puts add_more_ruby(string)