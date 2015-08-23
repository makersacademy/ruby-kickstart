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
  def initialize(bottles)
    if bottles < 0
      @bottles = 0
    elsif bottles > 99
      @bottles = 99
    else
      @bottles = bottles
    end
  end

  def print_song
    while @bottles > 10
    puts "#{englishNumber(@bottles)} bottles of beer on the wall,", "#{englishNumber(@bottles)} bottles of beer,", "Take one down, pass it around,", "#{englishNumber(@bottles -1)} bottles of beer on the wall."
    @bottles -= 1
    end
    while @bottles < 11 && @bottles > 2
     puts "#{englishNumber(@bottles).capitalize} bottles of beer on the wall,", "#{englishNumber(@bottles).capitalize} bottles of beer,", "Take one down, pass it around,", "#{englishNumber(@bottles -1).capitalize} bottles of beer on the wall."
    @bottles -= 1
    end

    if @bottles == 2
    puts "#{englishNumber(@bottles).capitalize} bottles of beer on the wall,", "#{englishNumber(@bottles).capitalize} bottles of beer,", "Take one down, pass it around,", "One bottle of beer on the wall."
    @bottles -= 1
    end
    if @bottles == 1
    puts "One bottle of beer on the wall,", "One bottle of beer,", "Take one down, pass it around,", "Zero bottles of beer on the wall."
    end
  end

  def englishNumber(number)
  # if number < 0 
  #   return 'Please enter a number that isn\'t negative.'
  # end
  if number == 0
    return 'zero'
  end

  # No more special cases! No more returns!

  numString = ''  # This is the string we will return.

  onesPlace = ['one',     'two',       'three',    'four',     'five',
               'six',     'seven',     'eight',    'nine']
  tensPlace = ['Ten',     'Twenty',    'Thirty',   'Forty',    'Fifty',
               'Sixty',   'Seventy',   'Eighty',   'Ninety']
  teenagers = ['Eleven',  'Twelve',    'Thirteen', 'Fourteen', 'Fifteen',
               'Sixteen', 'Seventeen', 'Eighteen', 'Nineteen']

  write = number/100          # How many hundreds left to write out?
  left = number - write*100  # Subtract off those hundreds.

  if write > 0
    hundreds  = englishNumber write
    numString = numString + hundreds + ' hundred'

    if left > 0
      numString = numString + ' '
    end
  end

  write = left/10          
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

  numString
end



end

beer = BeerSong.new(120)
puts beer.print_song


