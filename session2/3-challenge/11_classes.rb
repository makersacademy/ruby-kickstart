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
class Fixnum

  def is_plural
    self == 1 ? "bottle" : "bottles"
  end

end

class BeerSong

  def initialize (bottles)
    bottles = 99 if bottles > 99
    bottles = 0 if bottles < 0
    @bottles = bottles
  end

  def print_song
    @bottles.downto(1) do |bot_num|
      puts "#{to_eng(bot_num).capitalize} #{bot_num.is_plural} of beer on the wall,"
      puts "#{to_eng(bot_num).capitalize} #{bot_num.is_plural} of beer,"
      puts "Take one down, pass it around,"
      puts "#{to_eng(bot_num - 1).capitalize} #{(bot_num-1).is_plural} of beer on the wall."
    end
  end

  def to_eng(value)
    numbers_to_name = {90 => "ninety", 80 => "eighty", 70 => "seventy", 60 => "sixty", 50 => "fifty", 40 => "forty", 30 => "thirty", 20 => "twenty", 19 => "nineteen", 18 =>"eighteen", 17 =>"seventeen",  16 => "sixteen", 15=>"fifteen", 14=>"fourteen", 13=>"thirteen", 12=>"twelve", 11 => "eleven", 10 => "ten", 9 => "nine", 8 => "eight", 7 => "seven", 6 => "six", 5 => "five", 4 => "four", 3 => "three", 2 => "two", 1 => "one", 0 => "zero"}
    if value < 20 || value % 10 == 0
      return numbers_to_name[value]
    else
      tens = value / 10
      tens_return = tens * 10
      singles = value - tens * 10
      return numbers_to_name[tens_return] + "-" + numbers_to_name[singles]
    end
  end
end

singsong = BeerSong.new 99

singsong.print_song

singsong = BeerSong.new 20
singsong.print_song
