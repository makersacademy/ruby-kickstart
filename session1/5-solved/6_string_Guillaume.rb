# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
	new_string=''
	n=0
	while n!= (string.length)
	  if (return_odds==true && n.odd? == true) || (return_odds==false && n.even? == true)
	  new_string << string[n]
	  else
	  end
	n+=1
	end
new_string
end