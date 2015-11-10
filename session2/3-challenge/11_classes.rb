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

	def initialize (beers)
		if beers > 99
			@beers == 99
		elsif beers < 0 
			@beers == 0
		else
		@beers = beers
		end
	end

	attr_accessor = 'beers'

	def bottle(n)
		if n == 1
			"bottle"
		else
			"bottles"
		end
	end

	def print_song
		while @beers > 0
			puts "#{number(@beers)} #{bottle(@beers)} of beer on the wall," 
			puts "#{number(@beers)} #{bottle(@beers)} of beer,"
			@beers -= 1
			puts "Take one down, pass it around,"
			puts "#{number(@beers)} #{bottle(@beers)} of beer on the wall"
		end

		if @beers == 0
			puts "No more bottles of beer on the wall."
		end
	end

	def number(beers)
	   ones = ['Zero', 'One', 'Two', 'Three', 'Four', 'Five', 'Six', 'Seven', 'Eight', 'Nine']
	   teens = ['Eleven', 'Twelve', 'Thirteen', 'Fourteen', 'Fifteen', 'Sixteen', 'Seventeen', 'Eighteen', 'Nineteen']
	   tens = ['Ten', 'Twenty', 'Thirty', 'Forty', 'Fifty', 'Sixty', 'Seventy', 'Eighty', 'Ninety']

	   string = ''

	   if beers > 19
		   tensplace = beers / 10
		   string << tens[tensplace - 1]
		   beers -= tensplace * 10
		   return string if beers % 10 == 0
		   string << '-'
	   elsif (beers < 20 && beers > 9)
	   		teensplace = beers % 10
	     	return string << teens[teensplace-1]
	   end

	   if beers >= 0
	     string << ones[beers]
	     string
	   end
	end
end


bottles = BeerSong.new(5)
bottles.print_song






	




