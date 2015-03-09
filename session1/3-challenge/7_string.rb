# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  return_this = ""
  add_next = false
  string.size.times do |index|
    current_char = string[index]
    return_this << current_char if add_next
    add_next = (current_char.downcase == "r")
  end
  return_this
end


=begin
Best attempt at this, fails either due to returning "Parrrrrrrr" not "arrrrrrrr" or due to:
"TypeError: no implicit conversion of nil into String" 
never worked out how to get rid of it



def pirates_say_arrrrrrrrr(string)
	return_this = ""
#	halt = 0
	string.size.times do |x|
		previous = string[x-1]
		if previous.downcase == "r"# && halt != string.size
			return_this << string[x]
		else
			nil
		end
#		halt += 1
	end
	return_this
end


=end
