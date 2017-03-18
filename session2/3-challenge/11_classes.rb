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

#steps
	#create a class BeerSong
	#initialize with parameters for #of beers on wall
	#if parameter < 0 = 0, if parameter > 99 = 99
	#create a method that takes the @number of beers on wall as starting point and counts down until zero
		#convert @number of beers into a string that can place into verse (may need a method for this) 
		#can set-up a while x > 0 counter so that printing of verse
	#method number converter (ref: English Number if stuck)
		#takes a number from 0 - 99
		#structure in terms of how formed - single numbers and tens 0-12 take one string e.g. one or twelve, whereas tens take two twenty + one, nine + teen
		#0 - 12 stored as an array can act as one to nine (this then forms second part)
	#another option is a 99 data converter hash where while statement calls @beers_on_wall[converter] or could build in a separate module and convert

class BeerSong
	def initialize(beers_on_wall)
		@beers_on_wall = beers_on_wall

		if @beers_on_wall < 0
			@beers_on_wall = 0
		elsif @beers_on_wall > 99
			@beers_on_wall = 99
		end
	end

	def print_song
		puts "Starting point: there are #{converter(@beers_on_wall)} beers on the wall"
		
		while @beers_on_wall > 0
			puts "There are #{converter(@beers_on_wall)} bottles of beers on the wall,"
			puts "#{converter(@beers_on_wall)} bottles of beer"
			puts "Take one down, pass it around,"
			@beers_on_wall -= 1
			puts "#{converter(@beers_on_wall)} bottles of beer on the wall."
		end
	end

	def converter(beers_on_wall)
		numString = ''

		singulars = ['one','two','three','four','five','six','seven','eight','nine']
		tensPlaces = ['ten','twenty','thirty','forty','fifty','sixty','seventy','eighty','ninety']
		teens = ['eleven','twelve','thirteen','fourteen','fifteen','sixteen','seventeen', 'eighteen', 'nineteen']

		#could adapt for over one hundred but shouldn't need too
		remainder = beers_on_wall
		tens = remainder/10
		remainder = remainder - tens*10

		if beers_on_wall == 0
			numString = "zero"
			return numString
		end

		if tens < 1
    		 numString = numString + singulars[remainder -1]
    		 return numString
		end

		if tens > 0 
			if ((tens == 1 && remainder > 0))
				numString = numString + teens[remainder - 1] #the -1 is because of cardinal counting e.g. 14 will return 4 so have to minus 1 to get 3rd element which is 4th in series
				remainder = 0
			else
				numString = numString + tensPlaces[tens - 1]
			end

			if remainder > 0
      		# adds the - symbol between      
      			numString = numString + '-'
    		end

    		left_to_add = remainder
    		remainder = 0

    		if left_to_add > 0 
    			numString = numString + singulars[left_to_add -1]
    		end
    		return numString
    	end
	end
end

beers = BeerSong.new($stdin.gets.chomp.to_i)
beers.print_song
# beers.converter(14)
# beers.converter(28)
# beers.converter(1)
# beers.converter(9)
# beers.converter(0)













