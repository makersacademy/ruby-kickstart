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
	attr_accessor :bottles

	def initialize (bottles)
		@bottles = bottles
	end

	@bottles = 0 if @bottles < 0
	@bottles = 99 if @bottles > 99

	def translate
		word_bank = {0=>"zero", 1=>"One", 2=>"Two", 3=>"Three",4=>"Four", 5=>"Five",6=>"six", 7=>"seven", 8=>"Eight", 9=>"Nine",10=>"Ten",11=>"Eleven",12=>"Twelve", 13=>"Thirteen",14=>"Fourteen",15=>"Fifteen", 16=>"Sixteen", 17=>"Seventeen", 18=>"Eighteen", 19=>"Nineteen", 20=>"Twenty", 30=>"Thirty", 40=>"Fourty", 50=>"Fifty", 60=>"Sixty", 70=>"Seventy", 80=>"Eighty", 90=>"Ninty"}
		
		#Check for tens
		bottles_left = ""
		check = @bottles / 10
		left = @bottles % 10
		p check
		if check > 0
			if check == 1 && left > 0
				bottles_left << word_bank[(check*10 + left)]
				left = 0
			else
				bottles_left << word_bank[(check*10)]
			end
		end
		
		check = left
		p bottles_left
		#Check for ones
		if check == 0
			p bottles_left
		else
		if check >= 10 then bottles_left << word_bank[check] else bottles_left << ("-" + word_bank[check]) end
		return bottles_left.downcase.capitalize
		end		
	end

	def p_song
		@bottles.downto 1 do |i|
			p_stanza i
		end
	end

	def p_stanza(number)
		grammer = if number == 1 then "bottle" else "bottles" end
		if number.zero?
			String.new
		else
			p "#{translate(number)} #{grammer} of beer on the wall,"	,
			  "#{translate(number)} #{grammer} of beer,"				,
			  "Take one down, pass it around,"							,
			  "#{translate(number - 1)} #{grammer} of beer on the wall."
		end
	end
end
