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
  
  @@song_text = "NUM of beer on the wall,
NUM of beer,
Take one down, pass it around,
NEW of beer on the wall."
  
  def convert_bottles(number)                                                    #sanitized already to be in the 0..99 range
    under_20 = ["","one","two","three","four","five","six","seven","eight","nine","ten","eleven","twelve","thirteen","fourteen","fifteen","sixteen","seventeen","eighteen","nineteen"]
    tens = ["","","twenty","thirty","forty","fifty","sixty","seventy","eighty","ninety"]
    
    case number
      when 0 then "zero bottles"
      when 1 then "one bottle"
      when 2..19 then under_20[number] + " bottles"
      when 20..99 then str = tens[number / 10] + (number % 10 == 0 ? "" : "-" + under_20[number % 10]) + " bottles"
      else "-----------------error in conversion-------------------"
    end.capitalize                                                #capitalize
  end
  
  def initialize(number_of_bottles)
    if number_of_bottles < 0
      @total_number_of_bottles = 0
    elsif number_of_bottles > 99
      @total_number_of_bottles = 99
    else
      @total_number_of_bottles = number_of_bottles
    end
  end
  
  def print_song
    @total_number_of_bottles.downto(1) do |bottles|
      
      puts @@song_text
        .gsub(/(NUM)/m, convert_bottles(bottles))
        .gsub(/(NEW)/m, convert_bottles(bottles-1))
    end
  end
end