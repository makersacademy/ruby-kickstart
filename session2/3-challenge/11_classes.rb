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
  attr_accessor :bottle

  def initialize(bottle)
      if bottle < 0
        @bottle = 0
      elsif bottle > 99
        @bottle = 99
      else
        @bottle = bottle
      end
    end

def make_str(num)  # 23
  tens = ['ninety', 'eighty', 'seventy', 'sixty', 'fifty', 'forty', 'thirty', 'twenty', 'ten']
  ones = ['nine', 'eight', 'seven', 'six', 'five' , 'four', 'three', 'two', 'one']
  teens = ['nineteen', 'eighteen' , 'seventeen', 'sixteen', 'fifteen', 'fourteen', 'thirteen', 'twelve', 'eleven']
  first, second = num.to_s.split('').map {|digit| digit.to_i}
    case true
    when num == 0
      "zero"
    when num.to_s.length == 1
      ones[num * -1]
    when num = [*10..99] && second == 0
      tens[first * -1]
    when num = [*11..19] && first == 1
      teens[second * -1]
    when num = [*20..99] && second != 0
      tens[first * -1] + "-" + ones[second * -1]
    end
  end

  def plural(num)
    num == 1 ? "bottle" : "bottles"
  end

  def print_song
    if @bottle != nil
      @bottle.downto 1 do |num| #20
      puts "#{make_str(num)} #{plural(num)} of beer on the wall,".capitalize
      puts "#{make_str(num)} #{plural(num)} of beer,".capitalize
      puts "Take one down, pass it around,"
      puts "#{make_str(num - 1)} #{plural(num - 1)} of beer on the wall.".capitalize
      @bottle -= 1
      end
    else
      ""
    end
  end
end
