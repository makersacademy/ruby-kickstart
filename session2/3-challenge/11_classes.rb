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

  def initialize beers
    beers = 0  if beers < 0
    beers = 99 if beers > 99
    self.beers = beers
  end

  def verse start, after, bottle1, bottle2
    puts "#{start.capitalize} #{bottle1} of beer on the wall,"
    puts "#{start.capitalize} #{bottle1} of beer,"
    puts "Take one down, pass it around,"
    puts "#{after.capitalize} #{bottle2} of beer on the wall."
  end

  def print_song
    puts "" if beers == 0
    beers.downto(1).each do |amount|
      less_beer = english_number(amount - 1)
      num_of_beer = english_number(amount)
      bottle1 = amount > 1 ? "bottles" : "bottle"
      bottle2 = amount == 2 ? "bottle" : "bottles"
      verse num_of_beer, less_beer, bottle1, bottle2
    end
  end

  private

  UNITS = { 1 => "one", 2 =>"two", 3 => "three", 4 => "four", 5 => "five",
            6 => "six", 7=>"seven", 8=>"eight", 9=> "nine"}

  TEENS = {10 => "ten", 11 => "eleven", 12 => "twelve", 13 =>"thirteen", 14 => "fourteen",
            15 => "fifteen", 16 => "sixteen", 17 =>"seventeen",
            18 => "eighteen", 19 => "nineteen"}

  TENS = { 2 =>"twenty", 3=>"thirty", 4 =>"forty", 5=>"fifty",
          6 => "sixty",7 =>"seventy",8 =>"eighty", 9=> "ninety"}

  def english_number decimal
    case decimal
    when 0
      return "zero"
    when 1..9
      return UNITS[decimal]
    when 10..19
      return TEENS[decimal]
    when 20..99
      num = decimal.to_s.split(//)
      tens = num[0].to_i
      units = num[1].to_i
      units > 0 ? TENS[tens] + "-" + UNITS[units] : TENS[tens]
    end
  end
end

 a  = BeerSong.new 0
# p a.beers
# #p a.verse
# #p a.english_number 0
   a.print_song
p String.new