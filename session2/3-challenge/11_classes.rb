# DO NOT STRUGGLE ON THIS PROBLEM FOR MORE THAN 30 MINUTES!!

# Write a program that outputs the lyrics for "Ninety-nine Bottles of Beer on the Wall"
# Your program should print the number of bottles in English, not as a number. For example:
#
# Ninety-nine bottles of beer on the wall,
# Ninety-nine bottles of beer,
# Take one down, pass it around,
# Ninety-eight bottles of beer on the wall.
# ...
# One bottle of beer on the wall,
# One bottle of beer,
# Take one down, pass it around,
# Zero bottles of beer on the wall.
#
# Your program should not use ninety-nine output statements!
# Design your program with a class named BeerSong whose initialize method
# receives a parameter indicating the number of bottles of beer initially on the wall.
# If the parameter is less than zero, set the number of bottles to zero. Similarly,
# if the parameter is greater than 99, set the number of beer bottles to 99
# Then make a public method called print_song that outputs all stanzas from the number of bottles of beer down to zero.
# Add any additional methods you find helpful.

class BeerSong

	def initialize(no_of_bottles)

		if no_of_bottles < 0
			@no_of_bottles = 0
		elsif no_of_bottles > 99
			@no_of_bottles = 99
		else
			@no_of_bottles = no_of_bottles
		end
		print_song

	end

	def print_song
		
		until @no_of_bottles == 0
			
			if @no_of_bottles > 1
				puts "#{convert_to_words(@no_of_bottles)} bottles of beer on the wall,"
				puts "#{convert_to_words(@no_of_bottles)} bottles of beer,"
			else
				puts "#{convert_to_words(@no_of_bottles)} bottle of beer on the wall,"
				puts "#{convert_to_words(@no_of_bottles)} bottle of beer,"
			end

			puts "Take one down, pass it around,"
			puts "#{convert_to_words(@no_of_bottles - 1)} bottles of beer on the wall." if @no_of_bottles != 2
			puts "#{convert_to_words(@no_of_bottles - 1)} bottle of beer on the wall." if @no_of_bottles == 2

			@no_of_bottles -= 1
		end

	end

	def convert_to_words(num)

		# I INITIALLY TRIED TO DO THIS METHOD RECURSIVELY, AS I HAVE SEEN SOMETHING SIMILAR IN THE PAST, BUT SGRUGGLED.  I HAVE LEFT CODE COMMENTED HERE HERE FOR FUTURE REFERENCE.
		# 
		# if num % 10 == 0 && num != 0
		# 	multiple_of_ten_array = ["Ten", "Twenty", "Thirty", "Fourty", "Fifty", "Sixty", "Seventy", "Eighty", "Ninety"]
		# 	return multiple_of_ten_array[num / 10 - 1]
		# elsif num > 90
		# 	return "Ninety-" + convert_to_words(num - 90)
		# elsif num > 80
		# 	return "Eighty-" + convert_to_words(num - 80)
		# elsif num > 70
		# 	return "Seventy-" + convert_to_words(num - 70)
		# elsif num > 60
		# 	return "Sixty-" + convert_to_words(num - 60)
		# elsif num > 50
		# 	return "Fifty-" + convert_to_words(num - 50)
		# elsif num > 40
		# 	return "Fourty-" + convert_to_words(num - 40)
		# elsif num > 30
		# 	return "Thirty-" + convert_to_words(num - 30)
		# elsif num > 20
		# 	return "Twenty-" + convert_to_words(num - 20)
		# elsif num > 10
		# 	tens_array = ["Eleven", "Twelve", "Thirteen", "Fourteen", "Fifteen", "Sixteen", "Seventeen", "Eighteen", "Nineteen"]
		# 	return tens_array[num - 11]
		# elsif num < 10
		# 	ones_array = ["Zero", "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine"]
		# 	return ones_array[num]
		# else
		# 	return num
		# end

		num_to_return = ""
		
		multiple_of_ten_array = ["Ten", "Twenty", "Thirty", "Forty", "Fifty", "Sixty", "Seventy", "Eighty", "Ninety"]
		tens_array = ["Eleven", "Twelve", "Thirteen", "Fourteen", "Fifteen", "Sixteen", "Seventeen", "Eighteen", "Nineteen"]
		ones_array = ["Zero", "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine"]

		if num % 10 == 0 && num != 0
			return multiple_of_ten_array[num / 10 - 1]
		elsif num > 10 && num < 20
			return tens_array[num - 11]
		elsif num < 10 && num >= 0
			return ones_array[num]
		else
			num_of_tens = num / 10
			num_of_ones = num - num_of_tens * 10
			num_to_return = multiple_of_ten_array[num_of_tens - 1] + "-" + ones_array[num_of_ones].downcase
		end
		
	end

end

# BeerSong.new(22)

