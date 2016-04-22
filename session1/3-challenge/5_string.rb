# Given a string, replace every instance of sad to happy
#
# add_more_ruby("The clowns were sad.")         # => "The clowns were happy."
# add_more_ruby("The sad dad said sad stuff.")  # => "The happy dad said happy stuff."
# add_more_ruby("Sad times are ahead!")         # => "Happy times are ahead!"

# Given a string, replace every instance of sad to happy
#
# add_more_ruby("The clowns were sad.")         # => "The clowns were happy."
# add_more_ruby("The sad dad said sad stuff.")  # => "The happy dad said happy stuff."
# add_more_ruby("Sad times are ahead!")         # => "Happy times are ahead!"

def add_more_ruby(string)
	gsubcheck = false
	string_ary = string.split
	key_array = []
	count = 0
	string_ary.each do |i|
		if i.downcase.include? "sad"
			if i.length == 3
				key_array << count
			elsif i.downcase[0]=="s" && i.downcase[1]=="a" && i.downcase[2]=="d" && i[3] =~ /\W/
				key_array << count
			elsif i.length%3 == 0 && i.downcase[0]=="s" && i.downcase[1]=="a" && i.downcase[2]=="d" && i.downcase[3]=="s" && i.downcase[4]=="a" && i.downcase[5]=="d"
				key_array << count
			end
		end
		count += 1
	end
	key_array.each{|i| string_ary[i] = string_ary[i].gsub('sad','happy').gsub('Sad','Happy').gsub("SAd", "Happy").gsub("SAD","HAPPY")}
	string_ary.join(" ")
end
