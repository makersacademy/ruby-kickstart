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
  attr_accessor :beer

  def initialize(beer)
    beer = 0  if beer < 0
    beer = 99 if beer >= 99
    self.beer = beer
  end

  def print_song
    beer.downto 1 do |x|
      song x
      beer =- 1
  end

  def song(x)
      puts "#{englishnumber x} #{plur x} of beer on the wall,"        ,
           "#{englishnumber x} #{plur x} of beer,"                    ,
           "Take one down, pass it around,"                           ,
           "#{englishnumber x-1} #{plur x-1} of beer on the wall."
  end
    def plur(x)
      if x.to_i != 1
      plur = "bottles"
      else
      plur = "bottle"
      end
    end

  def englishnumber(x)
    if 0 <= x && x <= 19
      %w(zero one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)[x]
    elsif x % 10 == 0
      %w(zero ten twenty thirty forty fifty sixty seventy eighty ninety)[x/10]
    else
    "#{englishnumber x/10*10}-#{englishnumber x%10}"
    end.capitalize
  end


  end
end


