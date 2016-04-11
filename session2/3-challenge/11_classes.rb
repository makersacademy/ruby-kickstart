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

  public

  def print_song
    while @bottles_of_beer > 0
      puts "#{english_number(@bottles_of_beer)} #{ @bottles_of_beer != 1 ? "bottles" : "bottle" } of beer on the wall,"
      puts "#{english_number(@bottles_of_beer)} #{ @bottles_of_beer != 1 ? "bottles" : "bottle" } of beer,"
      puts "Take one down, pass it around,"
      puts "#{english_number(@bottles_of_beer - 1)} #{ (@bottles_of_beer -1) != 1 ? "bottles" : "bottle" } of beer on the wall."
      @bottles_of_beer -= 1
      break if @bottles_of_beer == 0
    end
  end



  private

  def initialize(bottles_of_beer)
    if bottles_of_beer < 0
      @bottles_of_beer = 0
    elsif bottles_of_beer > 99
      @bottles_of_beer = 99
    else @bottles_of_beer = bottles_of_beer
    end
  end

  def english_number(number)
      if number == 0
        return 'Zero'
      end

      numString = ''  # This is the string we will return.
      onesPlace = ['one',     'two',       'three',    'four',     'five',
                   'six',     'seven',     'eight',    'nine']
      tensPlace = ['ten',     'twenty',    'thirty',   'forty',    'fifty',
                   'sixty',   'seventy',   'eighty',   'ninety']
      teenagers = ['eleven',  'twelve',    'thirteen', 'fourteen', 'fifteen',
                   'sixteen', 'seventeen', 'eighteen', 'nineteen']

      left = number
      write = left/10          # How many tens left to write out?
      left  = left - write*10  # Subtract off those tens.

      if write > 0
        if ((write == 1) and (left > 0))
          # Since we can't write "tenty-two" instead of "twelve",
          # we have to make a special exception for these.
          numString = numString + teenagers[left-1]
          # The "-1" is because teenagers[3] is 'fourteen', not 'thirteen'.

          # Since we took care of the digit in the ones place already,
          # we have nothing left to write.
          left = 0
        else
          numString = numString + tensPlace[write-1]
          # The "-1" is because tensPlace[3] is 'forty', not 'thirty'.
        end

        if left > 0
          # So we don't write 'sixtyfour'...
          numString = numString + '-'
        end
      end

      write = left  # How many ones left to write out?
      left  = 0     # Subtract off those ones.

      if write > 0
        numString = numString + onesPlace[write-1]
        # The "-1" is because onesPlace[3] is 'four', not 'three'.
      end

      # Now we just return "numString"...
      numString.capitalize
    end
end
