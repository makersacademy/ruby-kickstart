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
	attr_accessor :number
	def initialize(number)
		@number = number
		@number = 0 if number < 0
		@number = 99 if number > 99
	end


	def English_num(num)
		zero_nineteen = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
		ten_ninety = ["Zero","Ten", "Twenty", "Thirty", "Forty", "Fifty", "Sixty", "Seventy", "Eighty", "Ninety"]
		if num >= 0 && num <= 19 
			"#{zero_nineteen[num]}".capitalize
		elsif num % 10 == 0
			"#{ten_ninety[num/10]}"
		else 
			"#{ten_ninety[num/10]}-#{zero_nineteen[num%10]}"
		end
	end


 	def bottle(n)
    	if n == 1 
    		"bottle"
    	elsif n == 0
    		"bottles"
    	else 
    		"bottles"
    	end
  	end

  
	def print_song
		begin 
			if @number == 0
				""
			else
			puts "#{English_num(@number)} #{bottle(@number)} of beer on the wall," 	,
				 "#{English_num(@number)} #{bottle(@number)} of beer," 				,
				 "Take one down, pass it around," 									,
				 "#{English_num(@number-1)} #{bottle(@number-1)} of beer on the wall."
			@number -= 1
			end 
		end until @number == 0
	end
 

end
