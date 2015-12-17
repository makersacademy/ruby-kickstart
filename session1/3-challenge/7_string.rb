# given a string, return the character after every letter "r"
#


def pirates_say_arrrrrrrrr(string)

	a = string.split("")
	
	b = Array.new

	a.each_index do | w |

		unless w - 1 == -1

			if a.fetch(w - 1) == "r" 

	    		b << a.fetch(w) 	    				    	

			elsif a.fetch(w - 1) == "R"

	    		b << a.fetch(w)

			end

		end
		
	end

	b.join

end

 # puts pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
 # puts pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
 # puts pirates_say_arrrrrrrrr("Pirates say arrrrrrrr")        # => "arrrrrrrr"