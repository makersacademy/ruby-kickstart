string = "The clowns were sad. The sad dad said sad stuff. Sad times are ahead."

def add_more_ruby(string)
	new_string = string.gsub("sad","happy").gsub("Sad","Happy")
	puts new_string
end

add_more_ruby(string)




