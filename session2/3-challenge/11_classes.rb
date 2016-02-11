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

 def initialize (num_bottle)
  @num_bottle = num_bottle
 end

 attr_accessor 'num_bottle'

 def print_song
   while num_bottle > 0
     if self.num_bottle == 1
       puts "#{num_bottle} bottle of beer on the wall,\n#{num_bottle} bottle of beer,\nTake one down, pass it around,"
       self.num_bottle -= 1
     elsif self.num_bottle > 1
       puts "#{num_bottle} bottles of beer on the wall,\n#{num_bottle} bottles of beer,\nTake one down, pass it around,"
       self.num_bottle -= 1
       if self.num_bottle == 1
         puts "#{num_bottle} bottle of beer on the wall.\n "
       else
         puts "#{num_bottle} bottles of beer on the wall.\n "
       end
     end
   end
   puts "Zero bottles of beer on the wall."
 end

 # ones = {"1" => "one", "2" => "two", "3" => "three", "4" => "four", "5" => "five", "6" => "six", "7" => "seven", "8" => "eight". "9" => "nine"}
 # tens = {"2" => "Twenty-", "3" => "Thirty-", "4" => "Fourty-", "5" => "Fifty-", "6" => "Sixty-", "7" => "Seventy-", "8" => "Eighty-". "9" => "Ninety-"}
 # teens_special = {"11" => "Eleven", "12" => "Twelve"}
 #
 # # helper function to convert number to english

end

puts "Enter a number between 0 and 99"
num_bottle = gets.chomp.to_i
num_bottle = 99 if num_bottle > 99
num_bottle = 0 if num_bottle < 0
your_beer = BeerSong.new (num_bottle)
your_beer.print_song
