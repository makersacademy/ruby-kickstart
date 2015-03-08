# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
	n = 0
	new_string=''
	# we do not need to consider the last character. 
	# Whether it's a r or R, there is nothing to include in the new sting right after the last character.
	while (n+1)!= (string.length)
	  if (string[n] =='R'|| string[n] =='r')
	  new_string << string[n+1]
	  else
	  end
	n+=1
	end
new_string
end

