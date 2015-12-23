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
  attr_accessor 'num_bottles'

  def initialize
    num_bottles = 0 if num_bottles < 0
    num_bottles = 99 if num_bottles > 99
    self.num_bottles = num_bottles
  end

  def beer_song
    

  num_bottles=99

  while num_bottles>1
  	print "#{num_bottles} bottles of beer on the wall, #{num_bottles} bottles of beer."
  	num_bottles-=1
  	puts " Take one down pass it around #{num_bottles} bottles of beer on the wall."
  end

  puts "1 bottle of beer on the wall, 1 bottle of beer. Take it down pass it around, no more bottles of beer on the wall!"


end
