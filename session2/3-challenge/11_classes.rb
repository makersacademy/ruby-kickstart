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

  def initialize(beer)
    @beer = beer
		@beer = 99 if beer > 99
		@beer = 0 if beer < 0
  end

  def print_song
    while @beer > 0
    	puts "#{number(@beer).capitalize} #{@beer <= 1 ? "bottle" : "bottles"} of beer on the wall,"
    	puts "#{number(@beer).capitalize} #{@beer <= 1 ? "bottle" : "bottles"} of beer,"
    	puts "Take one down, pass it around,"
    	puts "#{number(@beer-1).capitalize} #{@beer-1 == 1 ? "bottle" : "bottles"} of beer on the wall."
			@beer -= 1
	  end
  end


	def number(beers)
    qty_1s_to19s = {
      0 =>'zero', 1=>'one', 2=>'two', 3=>'three', 4=>'four', 5=>'five', 6=>'six', 7=>'seven', 8=>'eight', 9=>'nine', 10=>'ten', 11=>'eleven', 12=>'twelve', 13=>'thirteen', 14=>'fourteen', 15=>'fifteen', 16=>'sixteen', 17=>'seventeen', 18=>'eighteen', 19=>'nineteen'
    }

    qty_20s_to_90s = {
      2=>'twenty', 3=>'thirty', 4=>'forty', 5=>'fifty', 6=>'sixty', 7=>'seventy', 8=>'eighty', 9=>'ninety'
    }

    first = beers.div(10)
    second = beers % 10

    string = ""
    string << qty_1s_to19s[beers] if beers < 20
    string << qty_20s_to_90s[first] +"-"+ qty_1s_to19s[second] if beers >= 20 && second != 0
    string << qty_20s_to_90s[first] if beers >= 20 && second == 0
    string
	end


end


 # quantity = BeerSong.new(1)
 #
 # p quantity.print_song
