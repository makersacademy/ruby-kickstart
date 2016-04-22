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

  def initialize(beers)
    beers = 0 if beers < 0
    beers = 99 if beers > 99
    self.beers = beers
  end

  attr_accessor :beers

  def print_song
    while beers > 0
      if self.beers == 1
        puts "#{to_eng(beers)} bottle of beer on the wall,\n#{to_eng(beers)} bottle of beer,\nTake one down, pass it around,\n#{to_eng(beers - 1)} bottles of beer on the wall."
        self.beers -= 1
      elsif self.beers == 2
        puts "#{to_eng(beers)} bottles of beer on the wall,\n#{to_eng(beers)} bottles of beer,\nTake one down, pass it around,\n#{to_eng(beers - 1)} bottle of beer on the wall."
        self.beers -= 1
      elsif self.beers > 1
        puts "#{to_eng(beers)} bottles of beer on the wall,\n#{to_eng(beers)} bottles of beer,\nTake one down, pass it around,\n#{to_eng(beers - 1)} bottles of beer on the wall."
        self.beers -= 1
      end
    end
    String.new
  end

  def to_eng(num)
    if 1 <= num && num <= 19
      ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"][num].capitalize
    elsif num % 10 == 0 # 20, 30, 40, ...
      ["zero", "one", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"][num / 10].capitalize
    else
      "#{to_eng(num/10*10)}-#{to_eng(num%10)}".capitalize
    end
  end
end
