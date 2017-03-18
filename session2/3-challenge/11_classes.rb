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
  attr_accessor :number

  def initialize(number)
    number = 0 if number < 0
    number = 99 if number > 99

    self.number = number
  end

  def print_song
    number.downto(1) do |bottles|
      print_stanza bottles
    end
  end

  def print_stanza(n)
    if n.zero?
      String.new
    else
      puts "#{english_num_bottles(n)} bottle#{"s" if n != 1} of beer on the wall," ,
           "#{english_num_bottles(n)} bottle#{"s" if n != 1} of beer,",
           "Take one down, pass it around,",
           "#{english_num_bottles(n - 1)} bottle#{"s" if n == 1} of beer on the wall.\n\n"
    end
  end

  def english_num_bottles(n)
    teens = %w(zero one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)
    tens = %w(zero ten twenty thirty forty fifty sixty seventy eighty ninety)
    var = ""
    if 0 <= n && n <= 19
      var = "#{teens[n]}"
    elsif n % 10 == 0
      var = "#{tens[n/10]}"
    else
      var = "#{english_num_bottles(n / 10 * 10)}-#{english_num_bottles(n % 10)}"
    end
    var.capitalize
  end
end
