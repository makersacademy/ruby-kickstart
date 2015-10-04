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
  attr_accessor :n
  def initialize(n)
    if n < 0
      @beer = 0
    elsif n < 99
      @beer = 99
    else
      @beer = n
    end

  end


  def print_song
    n = @beer
    beers = " bottles of beer "
    beer = " bottle of beer "

    while n != 1
      print n.to_s+beers + "on the wall.\n"
      print n.to_s+beers + "\n"
      n -= 1
      print "Take one down and pass it around, " + n.to_s+ beers+"  on the wall\n"
    end

    print "1 bottle of beer on the wall.1 bottle of beer Take one down and pass it around, 0 bottles of beer   on the wall\n\n"
    print "No more  bottle of beer on the wall, no more bottle of beer ."
  end
end



