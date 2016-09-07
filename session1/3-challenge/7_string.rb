# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"


#iterate through the string by using the index numbers
#find the 'r's in the string, either uppercase or lowercase.
#find the next character along from the r
#return all of these characters as one string


def pirates_say_arrrrrrrrr(string)
	#create an empty string 
    to_return = ""
#counts the string length and uses that number for the method .times for the loop.
    string.length.times do |index|
    	#each character with the each index number is stored in the variable current_char
        current_char = string[index]
        #the next character (with the index + 1) is stored in another variable
        #uses the logical or operator, so if there isn't a 'next_char' (is nil so false)
        #then it returns an empty string
        next_char = string[index + 1] || ''

#pushes the next_char value to the to_return string, only if the current char is r
#or R.
        to_return << next_char if (current_char == "r" || current_char == "R")
    end

#calls the string variable 
    to_return
end