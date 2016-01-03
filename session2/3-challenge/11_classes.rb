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
  
  # attr_accessor 'bottles'
  def initialize(bottles)
      @bottles = bottles
      @bottles = 0 if @bottles < 0
      @bottles = 99 if @bottles > 99
  end
  
  def print_song
    @bottles.downto(1) do |i|
      song_lines(i)
    end
  end

  def song_lines(num)
    if num.zero?
      String.new
    else
      puts "#{to_word num} #{plural? num} of beer on the wall,",
           "#{to_word num} #{plural? num} of beer,",
           "Take one down, pass it around,",
           "#{to_word num-1} #{plural? num-1} of beer on the wall."
    end
  end

  def plural?(num)
    num == 1 ? "bottle" : "bottles"
  end

  def to_word(n)
    if 0 <= n && n <= 19
      ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"][n]
    elsif n % 10 == 0
      ['zero', 'ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety'][n/10]
    else
      "#{to_word n/10*10}-#{to_word n%10}"
    end.capitalize
  end
end