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
  attr_accessor :bottles

  def initialize(bottles)
    bottles = 0 if bottles <= 0
    bottles = 99 if bottles >= 99
    @bottles = bottles
  end

  def print_song
    bottles.downto 1 do |i|
      print_stanza i
    end
  end


  def print_stanza (bottles)
     if bottles == 1
       puts "One bottle of beer on the wall,"
       puts "One bottle of beer,"
       puts "Take one down, pass it around,"
       puts "Zero bottles of beer on the wall."
     elsif bottles == 2
       puts "Two bottles of beer on the wall,"
       puts "Two bottles of beer,"
       puts "Take one down, pass it around,"
       puts "One bottle of beer on the wall."
     elsif bottles > 2
       puts "#{num_word bottles} bottles of beer on the wall,"
       puts "#{num_word bottles} bottles of beer,"
       puts "Take one down, pass it around,"
       puts "#{num_word bottles - 1} bottles of beer on the wall."
     end
  end


  def num_word (intg)
    numbers_to_name = {
      90 => "ninety",
      80 => "eighty",
      70 => "seventy",
      60 => "sixty",
      50 => "fifty",
      40 => "forty",
      30 => "thirty",
      20 => "twenty",
      19 => "nineteen",
      18 => "eighteen",
      17 => "seventeen",
      16 => "sixteen",
      15 => "fifteen",
      14 => "fourteen",
      13 => "thirteen",
      12 => "twelve",
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
    the_string = ""
    numbers_to_name.each do |num, name|
      if intg == 0
        return the_string
      elsif intg.to_s.length == 1 && intg/num == 1
        return the_string + "#{name.capitalize}"
      elsif intg < 100 && intg / num > 0
        return the_string + "#{name.capitalize}" if intg % num == 0
        return the_string + "#{name.capitalize}" + "-" + "#{num_word intg%num}".downcase
      end
    end
  end



end
