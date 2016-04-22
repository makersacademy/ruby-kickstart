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
  attr_accessor :beers

  def initialize(beers)
    beers = 0  if beers < 0
    beers = 99 if beers > 99
    self.beers = beers
  end

  def print_song
    beers.downto 1 do |i|
      print_stanza i
    end
  end

  def print_stanza(n)
    if n.zero?
      String.new
    else
      puts "#{translate n} #{bottle n} of beer on the wall,"        ,
           "#{translate n} #{bottle n} of beer,"                    ,
           "Take one down, pass it around,"                         ,
           "#{translate n - 1} #{bottle n-1} of beer on the wall."
    end
  end

  # returns "bottle" or "bottles"
  def bottle(n)
    if n == 1 then 'bottle' else 'bottles' end
  end

  # translates number to English
  def translate(n)
    if 0 <= n && n <= 19
      %w(zero one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)[n]
    elsif n % 10 == 0
      %w(zero ten twenty thirty forty fifty sixty seventy eighty ninety)[n/10]
    else
      "#{translate n/10*10}-#{translate n%10}".downcase
    end.capitalize
  end
end

#class BeerSong
#  attr_accessor :number_of_bottles
#
#  def initialize(number_of_bottles)
#    if number_of_bottles > 99 then @number_of_bottles == 99
#    elsif number_of_bottles < 0 then @number_of_bottles == 0
#    else @number_of_bottles = number_of_bottles
#    end
#  end
#
#  def names_and_words(number_of_bottles)
#    bottles_to_numbers = { "Ninety" => 90,
#              "Eighty" => 80,
#              "Seventy" => 70,
#              "Sixty" => 60,
#              "Fifty" => 50,
#              "Forty" => 40,
#              "Thirty" => 30,
#              "Twenty" => 20,
#              "Nineteen" => 19,
#              "Eighteen" => 18,
#              "Seventeen" => 17,
#              "Sixteen" => 16,
#              "Fifteen" => 15,
#              "Fourteen" => 14,
#              "Thirteen" => 13,
#              "Twelve" => 12,
#              "Eleven" => 11,
#              "Ten" => 10,
#              "Nine" => 9,
#              "Eight" => 8,
#              "Seven" => 7,
#              "Six" => 6,
#              "Five" => 5,
#              "Four" => 4,
#              "Three" => 3,
#              "Two" => 2,
#              "One" => 1 }
#  end
#
#  while number_of_bottles >= 0
#    puts """#{number_of_bottles} bottles of beer on the wall,
#            #{number_of_bottles} bottles of beer.
#             Take one down, pass it around,
#            #{number_of_bottles -= 1} bottles of beer on the wall."""
#    if number_of_bottles < 0
#    break
#    end
#  end
#end
#end