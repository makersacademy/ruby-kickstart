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
  def initialize(starting_bottles)
    @bottles = 0 if starting_bottles < 0
    @bottles = 99 if starting_bottles > 99
    @bottles = starting_bottles
  end
end

def print_song
  while bottles > 2 do
    puts "#{@bottles} of beer on the wall, #{@bottles} of beer. Take one down and pass it around, #{@bottles - 1} of beer on the wall."
    bottles -= 1
  end
  puts "One bottle of beer on the wall, one bottle of beer.
    Take one down and pass it around, one bottle of beer on the wall."

  puts "No more bottles of beer on the wall, no more bottles of beer.
    Go to the store and buy some more, ninety-nine bottles of beer on the wall."
end


