# Given a sentence, return an array containing every other word.
# Punctuation is not part of the word unless it is a contraction.
# In order to not have to write an actual language parser, there won't be any punctuation too complex.
# There will be no "'" that is not part of a contraction.
# Assume each of these  charactsrs are not to be considered: ! @ $ # % ^ & * ( ) - = _ + [ ] : ; , . / < > ? \ |
#
# Examples
# alternate_words("Lorem ipsum dolor sit amet.")  # => ["Lorem", "dolor", "amet"]
# alternate_words("Can't we all get along?")      # => ["Can't", "all", "along"]
# alternate_words("Elementary, my dear Watson!")  # => ["Elementary", "dear"]



def alternate_words(string)
	# clean_string gets rid of  ! @ $ # % ^ & * ( ) - = _ .....
	clean_string = string.to_s.gsub(/[^’'A-Za-z0-9\s]/i,' ')

	#array then turns clean_string into an array of words split using the space character 
    clean_string_array = clean_string.split(" ")

    #create a new array called final
    final = []

    #len is the total number of values in the clean_string_array
    len = clean_string_array.length-1

    #loop throught clean_string_array
    for i in 0..len

    	#if i is an odd number then select that index from the clean_string_array
    	str = clean_string_array[i] if i % 2 == 0
		
		#if str does not have an empty space then pass it through
    	if str != ""

        	final << str
        	str = ""
        end
    end
    return final
   
end

#split the string into an array with strings
#select each odd item of the array
#remove any of the following characters from the array