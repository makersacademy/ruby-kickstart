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

  attr_accessor('number')

  def initialize(number)
    @number = number
  end

  def englishNumber(number)
    if number < 0
      number = 0
    end
    if number > 99
      number = 99
    end

    numString = ''

    ones = ['zero',  'one',     'two',       'three',    'four',     'five',
                 'six',     'seven',     'eight',    'nine']
    tens = ['ten',     'twenty',    'thirty',   'forty',    'fifty',
                 'sixty',   'seventy',   'eighty',   'ninety']
    teens = ['eleven',  'twelve',    'thirteen', 'fourteen', 'fifteen',
                 'sixteen', 'seventeen', 'eighteen', 'nineteen']

    left = number

    write = left/10
    left  = left - write*10

    if write > 0
      if ((write == 1) and (left > 0))
        numString = numString + teens[left-1]
        left = 0
      else
        numString = numString + tens[write-1]
      end

      if left > 0
        numString = numString + '-'
      end
    end

    write = left
    left  = 0

    if write >= 0
      numString = numString + ones[write]
    end
    numString
  end


  def print_song
    var1 = @number
    while var1 != 0
    var2 = (var1-1)
    if var1 > 2
    puts (englishNumber(var1) + ' bottles of beer on the wall,').capitalize
    puts (englishNumber(var1) + ' bottles of beer,').capitalize
    puts 'Take one down, pass it around,'
    puts (englishNumber(var2) + ' bottles of beer on the wall.').capitalize
    end
    if var1 == 2
      puts (englishNumber(var1) + ' bottles of beer on the wall,').capitalize
      puts (englishNumber(var1) + ' bottles of beer,').capitalize.capitalize
      puts 'Take one down, pass it around,'
      puts (englishNumber(var2) + ' bottle of beer on the wall.').capitalize
    end
    if var1 == 1
      puts (englishNumber(var1) + ' bottle of beer on the wall,').capitalize
      puts (englishNumber(var1) + ' bottle of beer,').capitalize
      puts 'Take one down, pass it around,'
      puts (englishNumber(var2) + ' bottles of beer on the wall.').capitalize
    end
    var1 = var2
   end

  end

end
