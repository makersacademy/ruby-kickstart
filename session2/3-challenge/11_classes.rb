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

  attr_accessor 'number'

  def initialize(number)
    @number = number
    @number = 0  if number < 0
    @number = 99 if number > 99
  end

  def print_song
    while @number > 0
      puts "#{writeNumber(@number)} of beer on the wall,"
      puts "#{writeNumber(@number)} of beer,"
      puts "Take one down, pass it around,"
      puts "#{writeNumber(@number-1)} of beer on the wall."
      @number -= 1
    end

  end

  def writeNumber(num)
    smallNumber = ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' ]
    teensNumber = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
    tensNumber = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
    if num%10 == 0 && num !=0
      letterNum = (tensNumber[num/10 - 1]).capitalize
    elsif num < 10
      letterNum = (smallNumber[num]).capitalize
    elsif num < 20
      letterNum = (teensNumber[num-11]).capitalize
    else
      letterNum = (tensNumber[num/10 - 1]).capitalize + '-' + smallNumber[num - (num/10)*10 ]
    end


    return "#{letterNum} bottles" if num != 1
    "#{letterNum} bottle"
  end

end


