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
  def initialize(bot_num)
    @bot_num = bot_num
    if @bot_num < 0
      @bot_num = 0
    elsif @bot_num > 99
      @bot_num = 99
    end
  end
  attr_accessor "bot_num"

  def numberchange (num)
      if 0 <= num && num <= 19
        %w(zero one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)[num]
      elsif num % 10 == 0
        %w(zero ten twenty thirty forty fifty sixty seventy eighty ninety)[num/10]
      else
        "#{numberchange num/10*10}-#{numberchange num%10}".downcase
      end.capitalize
    end

    def bottleplural(num)
      if num != 1
        "bottles"
      else
        "bottle"
      end
    end

    def song (num)
      if num.zero?
        puts "No beer!"
      else
        puts "#{numberchange(num)} #{bottleplural(num)} of beer on the wall," ,
        "#{numberchange(num)} #{bottleplural(num)} of beer," ,
        "Take one down, pass it around,"  ,
        "#{numberchange(num-1)} #{bottleplural(num-1)} of beer on the wall."
      end
    end

    def print_song
      if @bot_num == 0
        puts ""
      else
        while @bot_num > 0
          song(@bot_num)
          @bot_num -= 1
        end
      end
    end

end
