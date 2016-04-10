# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
  	return_array = ""

  		each_char.with_index do |ch, i|	#Passes each character in str to the given block : with_object(obj) {|(*args), obj| ... }  with_object(obj) Iterates the given block for each element with an arbitrary object, obj, and returns obj
  			return_array << ch if i.even?
  			end
  	return return_array
  end
  
end


#if the array index is even, << to new array containing only the evens.




	#arr = [1, 2, 3, 4, 5]
#arr.each { |a| print a -= 10, " " }


#arr.map { |a| 2*a }   #=> [2, 4, 6, 8, 10]



#return_characters = ""
		#string.size.times do |letter|
			#if letter.odd?
			#	return_characters << string[letter] # => "b", "bd", "bdf"
			#end
		#end
