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

  attr_accessor :beers
def initialize(beers)
    beers = 0  if beers < 0
    beers = 99 if beers > 99
    beers = beers.self
  end
  def print_song(beers)

  	beers = gets
while beers != 0
  if beers == 1
  puts "One bottle of beer on the wall"
    puts "One bottle of beer"
     puts "Take one down, pass it around"
puts "Zero bottles of beer on the wall"


  	else
  		
    puts "#{beers.to_s} bottles of beer on the wall"
    puts "#{beers.to_s} bottles of beer"
    puts "Take one down, pass it around"
puts "#{beers.to_s} bottles of beer on the wall"
    

  beers = beers - 1
end		
end

# I had made this a few months ago and tried using this in conjunction but couldn't get it to stick.
#def englishNumber 
#	if beers == 0
#		return 'zero'
#	end
#	numString = ''
#
#	onesPlace = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
#	tensPlace = ['ten', 'twenty','thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety' ]
#	teenagers = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
#
#	left = number
#	write = left/100
#	left = left - write*100
#
##
#		if left > 0
#			numString 
#		end
#end
end

end
