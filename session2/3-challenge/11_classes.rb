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
  attr_accessor :beernum
 
  def initialize(beernum)
    if beernum >= 99
      beernum = 99
    elsif beernum < 0
      beernum = 0
    else
      self.beernum = beernum
    end
  end
  
  def print_song
    beernum.downto 1 do |i|
      print_stanza i
    end
  end

  def print_stanza(n)
    if n == 0
      String.new
    else
      puts "#{number_name(n)} #{bottle n} of beer on the wall,"
      puts "#{number_name(n)} #{bottle n} of beer,"
      puts "Take one down, pass it around,"
      puts "#{number_name(n) - 1} #{bottle n-1} of beer on the wall."
    end
  end
  
  def bottle(n)
    if n == 1 then 'bottle' else 'bottles' end
  end
    
  def number_name(num)
  # taken from the Chris Pine book
  numString = ""
  onesPlace = ['one',     'two',       'three',    'four',     'five',
               'six',     'seven',     'eight',    'nine']
  tensPlace = ['ten',     'twenty',    'thirty',   'forty',    'fifty',
               'sixty',   'seventy',   'eighty',   'ninety']
  teenagers = ['eleven',  'twelve',    'thirteen', 'fourteen', 'fifteen',
               'sixteen', 'seventeen', 'eighteen', 'nineteen']
  left  = num
  write = left/100
  left  = left - write*100
  if write > 0
    hundreds  = number_name write
    numString = numString + hundreds + ' hundred'
    if left > 0
      numString = numString + ' '
    end
  end
  write = left / 10
  left  = left - write*10
  if write > 0
    if ((write == 1) and (left > 0))
      numString = numString + teenagers[left-1]
      left = 0
    else
      numString = numString + tensPlace[write-1]
    end
    if left > 0
      numString = numString + '-'
    end
  end
  write = left
  left  = 0
  if write > 0
    numString = numString + onesPlace[write-1]
  end
  numString == "" ? numString = "Zero" : numString.capitalize
    numString
  end
end


#Beersong.new(99).print_song