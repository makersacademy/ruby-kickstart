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

require "humanize"

class BeerSong

  attr_accessor :bottles

  def initialize(bottles)
    if bottles < 0
      @bottles = 0
    elsif bottles > 99
      @bottles = 99
    else
      @bottles = bottles
    end
  end

  def nums_eng
    if @bottles == 1
      print "One bottle"
    elsif @bottles == 0
      print "Zero bottles"
    else
      print "#{@bottles.humanize.capitalize} bottles"
    end
  end



  def print_song
    while @bottles > 0
      puts "#{nums_eng} of beer on the wall,"
      puts "#{nums_eng} of beer,"
      puts "Take one down, pass it around,"
      @bottles -= 1
      puts "#{nums_eng} of beer on the wall."
    end
  end

end

# idea. Alternative to humanize gem.
=begin
  def translate
    @array1 = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve", "thirteen", "fourteen",
      "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
    @array2 = ["twenty", "thirty", "fourty", "fifty", "sixty", "seventy", "eigthy", "ninety"]
    if @bottles == 1
      puts "One bottle"
    elsif @bottles < 20
      puts "#{@array1[@bottles]} bottles"
    else
      @x = @bottles.to_s.chars
      units = @x[1].to_i
      tens = @x[0].to_i
      puts "#{@array2.[tens]}-#{array2.[@units]}"
    end
  end
=end
