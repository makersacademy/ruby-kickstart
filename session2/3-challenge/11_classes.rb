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

  attr_accessor 'beer'

  def initialize(beer)
		if beer > 99
				@beer = 99
			elsif beer < 0
				@beer = 0
			else
				@beer = beer
		end
  end

	def bottle(n)
		if n == 1
			"bottle"
		else
			"bottles"
		end
	end


  def print_song
    while @beer > 0
    	puts "#{number(@beer).capitalize} #{bottle(@beer)} of beer on the wall,"
    	puts "#{number(@beer).capitalize} #{bottle(@beer)} of beer,"
    	puts "Take one down, pass it around,"
    	puts "#{number(@beer-1).capitalize} #{bottle(@beer-1)} of beer on the wall."
			@beer -= 1

			puts
		#	break if @beer == 0
		end
			puts ""

  end


	def number(beers)
  	ones = ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
  	teens = ['', 'ten', 'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
  	tens = ['', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']

  string = ''

  	if beers > 19
    	tensplace = beers / 10
    	string << tens[tensplace - 1]
    	beers -= tensplace * 10
    return string if beers % 10 == 0
    	string << '-'

  	elsif (beers < 20 && beers > 9)
    	teensplace = beers % 10

    return string << teens[teensplace+1]
  	end

  	if beers >= 0
    	string << ones[beers]
    	string
  	end
	end


end


bottle = BeerSong.new(200)

bottle.print_song
