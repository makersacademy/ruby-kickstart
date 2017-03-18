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
  attr_accessor 'beers'

  def initialize(beers)
    beers = 0  if beers < 0
    beers = 99 if beers > 99
    @beers = beers
  end

  def english_num(num)
    words_hash = {0=>"zero",1=>"one",2=>"two",3=>"three",4=>"four",5=>"five",6=>"six",7=>"seven",8=>"eight",9=>"nine",
                  10=>"ten",11=>"eleven",12=>"twelve",13=>"thirteen",14=>"fourteen",15=>"fifteen",16=>"sixteen",
                  17=>"seventeen", 18=>"eighteen",19=>"nineteen",20=>"twenty",30=>"thirty",40=>"forty",50=>"fifty",
                  60=>"sixty",70=>"seventy",80=>"eighty",90=>"ninety"}
    if num < 20 || num > 10
      return words_hash[num]
    else
      ones = num % 10
      tens = (num - ones)/10
      return words_hash[tens]+'-'+words_hash[ones]
    end
  end

  def print_song
    if @beers == 0
      puts ''
    elsif @beers == 1
      puts "One bottle of beer on the wall,"
      puts "One bottle of beer,"
      puts "Take one down, pass it around,"
      puts "Zero bottles of beer on the wall."
      @beers -= 1
    # elsif @beers == 2
    #   puts "Two bottles of beer on the wall,"
    #   puts "Two bottles of beer,"
    #   puts "Take one down, pass it around,"
    #   puts "One bottle of beer on the wall."
    #   @beers = 1
    else until @beers == 1 do
      puts "#{english_num(beers).capitalize} bottles of beer on the wall,"
      puts "#{english_num(beers).capitalize} bottles of beer,"
      puts "Take one down, pass it around,"
      if @beers == 2
        puts "One bottle of beer on the wall."
        @beers -= 1
      else puts "#{(english_num(beers) - 1).capitalize} bottles of beer on the wall."
        @beers -= 1
      end
    end
    end
  end
end