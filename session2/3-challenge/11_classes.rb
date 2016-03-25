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

#Not working!
class BeerSong

  def initialize(bottles)
    @bottles = bottles
  end

  def num_to_word(int)
    num_hash = {
      90 => "ninety",
      80 => "eighty",
      70 => "seventy",
      60 => "sixty",
      50 => "fifty",
      40 => "forty",
      30 => "thirty",
      20 => "twenty",
      19=>"nineteen",
      18=>"eighteen",
      17=>"seventeen",
      16=>"sixteen",
      15=>"fifteen",
      14=>"fourteen",
      13=>"thirteen",
      12=>"twelve",
      11 => "eleven",
      10 => "ten",
      9 => "nine",
      8 => "eight",
      7 => "seven",
      6 => "six",
      5 => "five",
      4 => "four",
      3 => "three",
      2 => "two",
      1 => "one"
    }
    str = ""
    num_hash.each do |num, name|
      if int == 0
        return str
      elsif int.to_s.length == 1 && int/num > 0
        return str + "#{name}"
      elsif int < 100 && int/num > 0
        return str + "#{name}" if int%num == 0
        return str + "#{name} " + num_to_word(int%num)
      elsif int/num > 0
        return str + num_to_word(int/num) + " #{name} " + num_to_word(int%num)
      end
    end
  end

  def bottles
    if @bottles < 0
      @bottles = 0
    elsif @bottles > 99
      @bottles = 99
    end
  end

  def lyrics
    "#{num_to_word(bottles)} bottles of beer on the wall,"
    "#{num_to_word(bottles)} bottles of beer,"
    "Take one down, pass it around,"
    "#{num_to_word(bottles)} bottles of beer on the wall."
  end

  def print_song
    if @bottles == 0
      print ""
    end
    @bottles.downto(1) { |x| puts lyrics x }
  end
end
