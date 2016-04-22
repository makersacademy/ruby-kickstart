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
  def initialize(num_bottles)
    @num_bottles = num_bottles
  end

  def englishNumber number
    if number == 0
      return 'zero'
    end
    numString = ''
    left  = number

    onesPlace    = ['one',        'two',       'three',    'four',     'five',
                    'six',        'seven',     'eight',    'nine']
    tensPlace    = ['ten',        'twenty',    'thirty',   'forty',    'fifty',
                    'sixty',      'seventy',   'eighty',   'ninety']
    teenagers    = ['eleven',     'twelve',    'thirteen', 'fourteen', 'fifteen',
                    'sixteen',    'seventeen', 'eighteen', 'nineteen']

    write = left/10          # How many tens left to write out?
    left  = left - write*10  # Subtract off those tens

                    if write > 0
                      if ((write == 1) and (left > 0))
                        # Since we can't write "tentytwo"instead of "twelve",
                        # we have to make a special exception for these.
                        numString = numString + teenagers[left-1]
                        # The "-1" is because teenagers[3] is 'fourteen', not 'thirteen'.

                        # Since we took care of the digit in the ones place already,
                        # we have nothing left to write.
                        left = 0
                      else
                        numString = numString + tensPlace[write-1]
                        # The "-1" is because teenagers[3] is 'forty', not 'thirty'.
                      end

                      if left > 0
                        # So we don't write 'sixtyfour'...
                        numString = numString + '-'
                      end
                    end

                    write = left  # How many ones left to write out?
                    left = 0      # Subtract off those ones

                    if write > 0
                      numString = numString + onesPlace[write-1]
                      # The "-1" is because teenagers[3] is 'four', not 'three'.
                    end

                    # Now we return "numString"...
                    numString
  end

  def print_song
    bottles = @num_bottles
    if bottles < 0
      bottles = 0
    elsif bottles > 99
      bottles = 99
    end

    bottlesEnNum = englishNumber(bottles).capitalize

      while bottles > 0

      if bottles == 1
        puts bottlesEnNum + ' bottle of beer on the wall,'
        puts bottlesEnNum + ' bottle of beer,'
      else
        puts bottlesEnNum + ' bottles of beer on the wall,'
        puts bottlesEnNum + ' bottles of beer,'
      end

      puts 'Take one down, pass it around,'

      bottles = bottles - 1

      bottlesEnNum = englishNumber(bottles).capitalize

      if bottles > 1
        puts bottlesEnNum + ' bottles of beer on the wall.'
      else
        if bottles == 1
          puts bottlesEnNum + ' bottle of beer on the wall.'
        else
          puts 'Zero bottles of beer on the wall.'
        end
      end
    #  puts
    end
  end

end
# song = BeerSong.new 0
# song.print_song
