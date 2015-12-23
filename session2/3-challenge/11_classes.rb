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
  def initialize(bottle_num)
    if bottle_num < 0
      @bottle_num = 0
    elsif bottle_num > 99
      @bottle_num = 99
    else
      @bottle_num = bottle_num
    end
  end

  public
  def print_song
    num = @bottle_num

    return "" if num == 0

    while num > 0
      puts "#{englishnum(num)} #{bottles(num)} of beer on the wall,"
      puts "#{englishnum(num)} #{bottles(num)} of beer,"
      puts "Take one down, pass it around,"
      puts "#{englishnum(num-1)} #{bottles(num-1)} of beer on the wall."
      num -= 1
    end
  end

  private
  def englishnum(num)
    
    ones_place = ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
    tens_place = ['zero', 'ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
    teenagers = ['ten', 'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']

    numstring = ''
    tens = num/10
    num = num - tens*10

    if tens == 1
      numstring = teenagers[num]
    elsif tens >= 2
      numstring = tens_place[tens]
      numstring << "-" + ones_place[num] if num > 0
    else
      numstring = ones_place[num]
    end

  return numstring.capitalize
  end

  def bottles(num)
  	return "bottle" if num == 1
  	return "bottles"
  end
end

