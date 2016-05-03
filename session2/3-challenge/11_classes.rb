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
		number < 0 ? number = 0 : number
		number > 99 ? number = 99 : number
		self.number = number
	end

	def englishNumber(number)
		
		number == 0 ? numString = 'zero' : numString = ""
		
		onesPlace = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
		tensPlace = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
		teenagers = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
		
		left = number 
		
		write = left / 10
		left = left - write * 10
		
		if write > 0
			if ((write == 1) and (left > 0))
				numString = numString + teenagers[left-1]
				left = 0
			else
				numString = numString + tensPlace[write-1]
			end
			
			if left > 0
				numString = numString + '-'
			end
		end
		
		write = left
		left = 0
		
		if write > 0
			numString = numString + onesPlace[write-1]
		end
		numString.capitalize
	end

	def print_song
		if number == 0
			''
		else
			for i in number.downto(1)
				i == 1 ? bottles = 'bottle' : bottles = 'bottles'
				puts "#{(englishNumber i)} #{bottles} of beer on the wall,"
				puts "#{(englishNumber i)} #{bottles} of beer,"
				puts "Take one down, pass it around,"
				puts "#{(englishNumber i-1)} #{i-1 == 1 ? bottles = 'bottle' : bottles = 'bottles'} of beer on the wall."
			end
		end
	end
end

puts BeerSong.new(456).print_song #TEST

