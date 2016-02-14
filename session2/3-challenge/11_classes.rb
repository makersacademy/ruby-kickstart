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


class BeerSong
  attr_accessor :bottles

  def initialize(bottles)
    @bottles = bottles
    @bottles < 0 ? @bottles = 0 : bottles
    @bottles > 99 ? @bottles = 99 : bottles
  end

  def num_words(bottles)

  tens = ["ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
  teens = ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen","eighteen","nineteen"]
  ones = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]

  words = ''

  tens_place = bottles / 10
  ones_place = bottles % 10


  if tens_place > 1 and ones_place != 0
    words = "#{tens[tens_place-1]}-#{ones[ones_place-1]}"
  elsif tens_place == 1 and ones_place > 0 
    words = "#{teens[ones_place-1]}"
  elsif tens_place >= 1 and ones_place == 0
    words = "#{tens[tens_place-1]}"
  elsif 
    tens_place == 0 then words = "#{ones[ones_place-1]}"
  end

  words

end




 def print_song

    while @bottles > 2
     puts "#{num_words(@bottles).capitalize} bottles of beer on the wall,"
     puts "#{num_words(@bottles).capitalize} bottles of beer,"
     puts "Take one down, pass it around,"
     puts "#{num_words(@bottles-1).capitalize} bottles of beer on the wall."
     
     @bottles -= 1
    end
    
    if @bottles == 2
     puts "#{num_words(@bottles).capitalize} bottles of beer on the wall,"
     puts "#{num_words(@bottles).capitalize} bottles of beer,"
     puts "Take one down, pass it around,"
     puts "#{num_words(@bottles-1).capitalize} bottle of beer on the wall."
     
     @bottles -= 1
    end 

    if @bottles == 1
      puts "#{num_words(@bottles).capitalize} bottle of beer on the wall,"
      puts "#{num_words(@bottles).capitalize} bottle of beer,"
      puts "Take one down, pass it around,"
      puts "Zero bottles of beer on the wall."
      
    end
  end
end

 

