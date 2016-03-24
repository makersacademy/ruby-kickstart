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

	attr_accessor "beer_number"

	def initialize beer_number
		if beer_number > 99
			beer_number = 99
		elsif beer_number <= 0
			beer_number = 0
		end
		self.beer_number = beer_number
	end

	def englishNumber num
  		if num < 0
  			return "No negatives, please"
  		end
  		if num == 0
  			return "zero"
  		end
  
  		ones = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
  		tens = ["twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
  		teens = ["ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
  		words = ""
  		left = num
  		write = left/10
  		left = left - write*10
  
  		if write > 0
    		if ((write == 1) and (left >= 0))
      			words = words + teens[left]
      			left = 0
    		else
      			words = words + tens[write-2]
    		end
  	
  			if left > 0
  	  			words = words + "-"
    		end
  		end
  
  		write = left
  		left = 0

  		if write > 0
  			words = words + ones[write-1]
  		end

  		words.capitalize
	end

	def print_song
		number = self.beer_number
		while number > 2 
  		puts "#{englishNumber(number)} bottles of beer on the wall,"
  		puts "#{englishNumber(number)} bottles of beer," 
  		puts "Take one down, pass it around,"
  		puts "#{englishNumber((number-1))} bottles of beer on the wall."

    	number -= 1
		end

		if number == 2
  		puts "Two bottles of beer on the wall," 
  		puts "Two bottles of beer,"
  		puts "Take one down, pass it around,"
  		puts "One bottle of beer on the wall."

  		number -= 1
		end

		if number == 1
  		puts "One bottle of beer on the wall," 
  		puts "One bottle of beer,"
  		puts "Take one down, pass it around,"
  		puts "Zero bottles of beer on the wall."
		end
	end

end
