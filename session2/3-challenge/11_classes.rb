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
	attr_accessor 'initbottles'
	def initialize(initbottles)
		case 
			when initbottles > 99 
				@initbottles = 99 
			when initbottles <= 0
				@initbottles = 0
			else
				@initbottles = initbottles
		end
	end

	def print_song


until initbottles == 0 do
	@current_bottles = subhundred initbottles
	@new_bottles = subhundred (initbottles-1)
	@bottle_plural = initbottles == 1 ? "bottle" : "bottles"
	@new_bottle_plural = initbottles - 1 == 1 ? "bottle" : "bottles"
	puts "#{@current_bottles} #{@bottle_plural} of beer on the wall,"
	puts "#{@current_bottles} #{@bottle_plural} of beer,"
	puts "Take one down, pass it around,"
	puts "#{@new_bottles} #{@new_bottle_plural} of beer on the wall."
	@initbottles = initbottles - 1
	
end
	end
end

def subhundred number

  ones = %w{zero one two three four five six seven eight nine
            ten eleven twelve thirteen fourteen fifteen
            sixteen seventeen eighteen nineteen}

  tens = %w{zero ten twenty thirty forty fifty sixty seventy eighty ninety}

  subhundred = number % 100

  return [ones[subhundred]].join('').capitalize! if subhundred < 20

  return [tens[subhundred / 10].capitalize].join('') if subhundred % 10 == 0

  return [tens[subhundred / 10],['-'], ones[subhundred % 10]].join('').capitalize!

end
