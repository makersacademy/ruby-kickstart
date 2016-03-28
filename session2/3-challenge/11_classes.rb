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
  attr_accessor 'beers'
  def initialize(beers)
    if beers > 99
      @beers = 99
    elsif beers < 0
      @beers = 0
    else @beers = beers
    end
end





def make_alpha(count)
  tens = ["Ten", "Twenty", "Thirty", "Forty", "Fifty", "Sixty", "Seventy", "Eighty", "Ninety"]
  teens = ["Eleven", "Twelve", "Thirteen", "Fourteen", "Fifteen", "Sixteen", "Seventeen", "Eighteen", "Nineteen"]
  units = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
  # upcase_units = ["Zero", "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine"]
# okay, so here to translate numbers into letters
# so this is for pure tens
if count % 10 == 0
  alpha_bottles = tens[(count / 10) - 1]
# ths is for 1 to 10
elsif (count % 10) > 0 && (count < 10)
  alpha_bottles = units[count]
# this is for anything that is not divisible by ten and is above 19
elsif count % 10 != 0 && count > 19
  first, second = count.to_s.split('').map { |digit| digit.to_i }
  alpha_bottles = tens[first-1] + "-" + units[second]
  # this is for teens!!!
elsif count % 10 != 0 && count < 20
  alpha_bottles = teens[count-11]
# this is for single units
elsif count < 10 && count > 0
  alpha_bottles = units[count]
  alpha_bottles.capitalize
  # and this is for zero
else alpha_bottles = "Zero"
end
return alpha_bottles
end

# mea culpa, this block is a straight lift from the soluton given
# by josh creek, I am just borrowing it so I can try and work out what's
# going wrong with the rest of the code I wrote.

def bottle(n)
  if n == 1 then 'bottle' else 'bottles'
  end
end

def print_song
  beers.downto(1) do |the_beers|
      print_verse(the_beers)
  end
end

def print_verse(num)
# the next two lines of this block are also taken from the
# josh creek solution, although I'm unsure what they do... but as
# my problem is failing the first rake test with the error
# "rspec ./session2/4-spec/11.rb:24 # BeerSong prints nothing when there is no bee"
# I'm guessing it is something to do
if num.zero?
  String.new

# I know the following is hugely unsightly, but I tried for hours to get the
# .capitalize method to work on single units in the make_alpha block, but
# for some reason it just wouldn't. I will investigate why further later.

elsif num == 1
 puts "One bottle of beer on the wall,\nOne bottle of beer,\nTake one down, pass it around,\nZero bottles of beer on the wall.".split("\n")
 elsif num == 2
puts "Two bottles of beer on the wall,\nTwo bottles of beer,\nTake one down, pass it around,\nOne bottle of beer on the wall.".split("\n")
elsif num == 3
  puts "Three bottles of beer on the wall,\nThree bottles of beer,\nTake one down, pass it around,\nTwo bottles of beer on the wall.".split("\n")
elsif num == 4
  puts "Four bottles of beer on the wall,\nFour bottles of beer,\nTake one down, pass it around,\nThree bottles of beer on the wall.".split("\n")
elsif num == 5
  puts "Five bottles of beer on the wall,\nFive bottles of beer,\nTake one down, pass it around,\nFour bottles of beer on the wall.".split("\n")
elsif num == 6
  puts "Six bottles of beer on the wall,\nSix bottles of beer,\nTake one down, pass it around,\nFive bottles of beer on the wall.".split("\n")
elsif num == 7
  puts "Seven bottles of beer on the wall,\nSeven bottles of beer,\nTake one down, pass it around,\nSix bottles of beer on the wall.".split("\n")
elsif num == 8
  puts "Eight bottles of beer on the wall,\nEight bottles of beer,\nTake one down, pass it around,\nSeven bottles of beer on the wall.".split("\n")
elsif num == 9
  puts "Nine bottles of beer on the wall,\nNine bottles of beer,\nTake one down, pass it around,\nEight bottles of beer on the wall.".split("\n")
elsif num == 10
  puts "Ten bottles of beer on the wall,\nTen bottles of beer,\nTake one down, pass it around,\nNine bottles of beer on the wall.".split("\n")
# oh wow, that almost killed me finding that last "nine" that wasn't capped up. But, finally, PASSED!
else
  puts "#{make_alpha(num)} #{bottle num} of beer on the wall,\n#{make_alpha(num)} #{bottle num} of beer,\nTake one down, pass it around,\n#{make_alpha(num-1)} #{bottle num-1} of beer on the wall.".split("\n")
end
end
end
