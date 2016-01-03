# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"



def pirates_say_arrrrrrrrr(string)
  to_return = ""
  add_next = false
  string.size.times do |index|
    current_char = string[index,1] # the second param here tells it to get a str of length 1. This is only necessary on 1.8. If you are on 1.9, just go with string[index]
    to_return << current_char if add_next
    add_next = (current_char == "r" || current_char == "R")
  end
  to_return
end

=begin 

I don't like the solution given, the following (which I googled) is much more how I would have thought this problem through
granted (albeit can't get it to pass tests...)    

def pirates_say_arrrrrrrrr(string)
	to_return = ''  
  	string.each_char.each_cons(2).with_object("") 
  	  do |(a,b), to_return|
      next unless a.downcase == "r"
      to_return << b
  end
end

# both approaches return strings, hence to_return = '' - refer to question 3 on session 2, which should return an array but also seems to return a string...?!!
