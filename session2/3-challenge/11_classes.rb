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

	def initialize (number)
		@number = number
	end	

	def translation(numbers)
		special_cases = {
			1 => "One",
			2 => "Two",
			3 => "Three",
			4 => "Four",
			5 => "Five",
			6 => "Six",
			7 => "Seven",
		 	8 => "Eight",
			9 => "Nine",    
			10 => "Ten",
		 	11 => "Eleven",
			12 => "Twelve",
			13 => "Thirteen",
			14 => "Fourteen",
			15 => "Fifteen",
			16 => "Sixteen",
			17 => "Seventeen",
			18 => "Eighteen",
			19 => "Nineteen",
		} 
		 
		twenty = {  20 => "Twenty" }

		thirty = {  30 => "Thirty" }

		forty = { 40 => "Forty" }	

		fifty = {  50 => "Fifty" }

		sixty = {  60 => "Sixty"  }

		seventy = {  70 => "Seventy" }	

		eighty = {  80 => "Eighty" }	

		ninety = {  90 => "Ninety" }	

			if numbers < 20
				return special_cases[numbers]

		 	elsif numbers < 30 
				last_number = numbers.to_s[1]    
		 		
		 		if last_number == "0"
		 			return  twenty[20]
		 		else
		 			return twenty[20] + "-"  + special_cases[last_number.to_i].downcase
		 		end
		 	elsif numbers < 40
		 		last_number = numbers.to_s[1]
		 		if last_number == "0"
		 			return  thirty[30]
		 		else
		 			return thirty[30] + "-" + special_cases[last_number.to_i].downcase
		 		end
		 	elsif numbers < 50
		 		last_number = numbers.to_s[1]
		 		if last_number == "0"
		 			return  forty[40]
		 		else
		 			return forty[40] + "-" + special_cases[last_number.to_i].downcase
		 		end	
		 	elsif numbers < 60
		 		last_number = numbers.to_s[1]
		 		if last_number == "0"
		 			return  fifty[50]
		 		else
		 			return fifty[50] + "-" + special_cases[last_number.to_i].downcase
		 		end	
		 	elsif numbers < 70
		 		last_number = numbers.to_s[1]
		 		if last_number == "0"
		 			return  sixty[60]
		 		else
		 			return sixty[60] + "-" + special_cases[last_number.to_i].downcase
		 		end	
		 	elsif numbers < 80
		 		last_number = numbers.to_s[1]
		 		if last_number == "0"
		 			return seventy[70]
		 		else
		 			return seventy[70] + "-" + special_cases[last_number.to_i].downcase
		 		end	
		 	elsif numbers < 90
		 		last_number = numbers.to_s[1]
		 		if last_number == "0"
		 			return  eighty[80]
		 		else
		 			return eighty[80] + "-" + special_cases[last_number.to_i].downcase
		 		end	
		 	elsif numbers < 100
		 		last_number = numbers.to_s[1]
		 		if last_number == "0"
		 			return  ninety[90]
		 		else
		 			return ninety[90] + "-" + special_cases[last_number.to_i].downcase
		 		end					
		 	end	
	end	

	def print_song
		if @number > 99
			@number = 99
		end
		until @number == 0
    		number_minus_one = @number - 1
        	if @number < 0
        		return nil  

        	elsif number_minus_one > 1
            	puts  translation(@number) + " bottles of beer on the wall,\n"  + translation(@number) + " bottles of beer,\nTake one down, pass it around,\n" + translation(number_minus_one) + " bottles of beer on the wall."
            elsif number_minus_one == 1
            	puts  translation(@number) + " bottles of beer on the wall,\n"  + translation(@number) + " bottles of beer,\nTake one down, pass it around,\n" + translation(number_minus_one) + " bottle of beer on the wall."
 	       	elsif
    	        puts translation(@number) + " bottle of beer on the wall,\n" + translation(@number) +" bottle of beer,\nTake one down, pass it around,\n" + "Zero bottles of beer on the wall."
    	    	 
			# else
			#     puts "No more bottles of beer on the wall, no more bottles of beer.
			# 		Go to the store and buy some more, ninety-nine bottles of beer on the wall."
        	end
	    	@number -=1
		end
	end
end
song = BeerSong.new(105)
song.print_song  