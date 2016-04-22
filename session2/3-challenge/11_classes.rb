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
    if beers < 0
      beers = 0
    end
    if beers > 99
      beers = 99
    end
    self.beers = beers
  end

  def write_number(n)
    if 0 <= n && n <= 19
    ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"][n]
   elsif n%10 == 0
      ["zero", "ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"][n/10]
    else
      "#{write_number((n/10)*10)}-#{write_number(n%10)}"
    end
  end

  def plural(n)
    n == 1 ? "bottle" : "bottles"
  end

  def verse(n)
      puts "#{write_number(n)} #{plural(n)} of beer on the wall,".capitalize
      puts "#{write_number(n)} #{plural(n)} of beer,".capitalize
      puts "Take one down, pass it around,"
      puts "#{write_number(n-1)} #{plural(n-1)} of beer on the wall.".capitalize
  end

  def print_song
    beers.downto(1) { |amount| verse(amount)}
  end

end
