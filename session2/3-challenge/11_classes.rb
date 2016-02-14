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
  attr_accessor :num_bottles
  def initialize(num_bottles)
    num_bottles = 0  if num_bottles < 0
    num_bottles = 99 if num_bottles > 99
    @num_bottles = num_bottles
  end

  def print_song
    num_bottles.downto(2) do |num|
      puts get_stanza("One","Zero") if (num == 1)
      puts get_stanza(get_number(num),get_number(num-1))
    end
    return "" if (num_bottles == 0)
    puts "One bottle of beer on the wall,"
    puts "One bottle of beer,"
    puts "Take one down, pass it around,"
    puts "Zero bottles of beer on the wall."
  end
  def get_stanza(number,less_one)
    stanza1 = "#{number.capitalize} bottles of beer on the wall,\n#{number.capitalize} bottles of beer,\n"
    stanza2 = "Take one down, pass it around,\n#{less_one.capitalize} bottles of beer on the wall."
    stanza1.gsub!("bottles","bottle") if number == "one"
    stanza2.gsub!("bottles","bottle") if less_one == "one"
    stanza1 + stanza2
  end
  def get_number(int)
    numbers_to_name = {
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
    numbers_to_name.each do |num, name|
      if int == 0
        return str
      elsif int.to_s.length == 1 && int/num > 0
        return str + "#{name}"
      elsif int < 100 && int/num > 0
        return str + "#{name}" if int%num == 0
        return str + "#{name}-" + get_number(int%num)
      elsif int/num > 0
        return str + get_number(int/num) + " #{name} " + get_number(int%num)
      end
    end
  end
end
