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

  def initialize(number)
    @bottles = 0 if number < 0
    @bottles = 99 if number > 99
    @bottles = number if number >= 0 && number <= 99
  end

  def english_number(number)
    if number < 0 # No negative numbers.
      return 'Please enter a number that isn\'t negative.'
    end
    if number == 0
      return 'zero'
    end

    # No more special cases! No more returns!

    num_string = '' # This is the string we will return.

    ones_place = ['one', 'two', 'three',
                  'four', 'five', 'six',
                  'seven', 'eight', 'nine']

    tens_place = ['ten', 'twenty', 'thirty',
                  'forty', 'fifty', 'sixty',
                  'seventy', 'eighty', 'ninety']


    teenagers = ['eleven', 'twelve', 'thirteen',
                 'fourteen', 'fifteen', 'sixteen',
                 'seventeen', 'eighteen', 'nineteen']

    zillions = [['hundred', 2],
                ['thousand', 3],
                ['million', 6],
                ['billion', 9],
                ['trillion', 12],
                ['quadrillion', 15],
                ['quintillion', 18],
                ['sextillion', 21],
                ['septillion', 24],
                ['octillion', 27],
                ['nonillion', 30],
                ['decillion', 33],
                ['undecillion', 36],
                ['duodecillion', 39],
                ['tredecillion', 42],
                ['quattuordecillion', 45],
                ['quindecillion', 48],
                ['sexdecillion', 51],
                ['septendecillion', 54],
                ['octodecillion', 57],
                ['novemdecillion', 60],
                ['vigintillion', 63],
                ['googol', 100]]

    # "left" is how much of the number
    # we still have left to write out.
    # "write" is the part we are
    # writing out right now.
    # write and left...get it? :)
    left = number

    while zillions.length > 0
      zil_pair = zillions.pop
      zil_name = zil_pair[0]
      zil_base = 10 ** zil_pair[1]
      write = left/zil_base # How many zillions left?
      left = left - write*zil_base # Subtract off those zillions.

      if write > 0
        # Now here's the recursion:
        prefix = english_number write
        num_string = num_string + prefix + ' ' + zil_name

        if left > 0
          # So we don't write 'two billionfifty-one'...
          num_string = num_string + ' '
        end
      end
    end

    write = left/10 # How many tens left?
    left = left - write*10 # Subtract off those tens.

    if write > 0
      if ((write == 1) and (left > 0))
        # Since we can't write "tenty-two" instead of
        # "twelve", we have to make a special exception
        # for these.
        num_string = num_string + teenagers[left-1]
        # The "-1" is because teenagers[3] is
        # 'fourteen', not 'thirteen'.

        # Since we took care of the digit in the
        # ones place already, we have nothing left to write.
        left = 0
      else
        num_string = num_string + tens_place[write-1]
        # The "-1" is because tens_place[3] is
        # 'forty', not 'thirty'.
      end

      if left > 0
        # So we don't write 'sixtyfour'...
        num_string = num_string + '-'
      end
    end

    write = left # How many ones left to write out?
    left = 0 # Subtract off those ones.

    if write > 0
      num_string = num_string + ones_place[write-1]
      # The "-1" is because ones_place[3] is
      # 'four', not 'three'.
    end

    # Now we just return "num_string"...
    num_string
  end

  def print_song
    if @bottles == 0
      puts ""
      return
    end
    while @bottles > 0 do
      puts "#{english_number(@bottles).capitalize} bottle#{'s' if @bottles != 1 } of beer on the wall,"
      puts "#{english_number(@bottles).capitalize} bottle#{'s' if @bottles != 1} of beer,"
      puts "Take one down, pass it around,"
      @bottles -= 1
      puts "#{english_number(@bottles).capitalize} bottle#{'s' if @bottles != 1} of beer on the wall."
    end
  end

end
