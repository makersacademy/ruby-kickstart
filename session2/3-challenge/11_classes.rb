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
  attr_accessor 'bottles'

  def initialize  bottles
    if bottles <= 0
      @bottles = 0
    elsif bottles > 99
      @bottles = 99
    else
      @bottles = bottles
    end
  end

  def print_song
    new_num = @bottles
    less_num = new_num - 1
    num_eng = english_number new_num
    num_eng.capitalize!
    less_eng = english_number less_num
    less_eng.capitalize!

    if new_num == 1
      puts "#{num_eng} bottle of beer on the wall,"
      puts  "#{num_eng} bottle of beer,"
      puts "Take one down, pass it around,"
      puts "Zero bottles of beer on the wall."
    end

    if new_num > 1
      puts "#{num_eng} bottles of beer on the wall,"
      puts "#{num_eng} bottles of beer,"
      puts "Take one down, pass it around,"
          if less_num == 1
            puts "One bottle of beer on the wall."
          else
            puts "#{less_eng} bottles of beer on the wall."
          end
      @bottles -= 1
      print_song
    end
  end

    def english_number number
      if number < 0
      	return 'Please enter a number that isn\'t negative'
      end
      if number == 0
      	return 'zero'
      end

      num_string = ''

      ones_place = ['one','two','three','four','five','six','seven','eight','nine']
      tens_place = ['ten','twenty','thirty','forty','fifty','sixty', 'seventy','eighty','ninety']
      teenagers = ['eleven','twelve', 'thirteen','fourteen','fifteen','sixteen','seventeen','eighteen','nineteen']

      left = number
      write = number/(10**48)
      left = left - write*(10**48)

      if write > 0
      	quindecillion = english_number write
      	num_string = num_string + quindecillion + ' quindecillion'
      	if left > 0
      		num_string = num_string + ' '
      	end
      end

      write = left/(10**45)
      left = left - write*(10**45)

      if write > 0
      	quattuordecillion = english_number write
      	num_string = num_string + quattuordecillion + ' quattuordecillion'
      	if left > 0
      		num_string = num_string + ' '
      	end
      end

      write = left/(10**42)
      left = left - write*(10**42)

      if write > 0
      	tredecillion = english_number write
      	num_string = num_string + tredecillion + ' tredecillion'
      	if left > 0
      		num_string = num_string + ' '
      	end
      end

      write = left/(10**39)
      left = left - write*(10**39)

      if write > 0
      	duodecillion = english_number write
      	num_string = num_string + duodecillion + ' duodecillion'
      	if left > 0
      		num_string = num_string + ' '
      	end
      end


      write = left/(10**36)
      left = left - write*(10**36)

      if write > 0
      	undecillion = english_number write
      	num_string = num_string + undecillion + ' undecillion'
      	if left > 0
      		num_string = num_string + ' '
      	end
      end


      write = left/(10**33)
      left = left - write*(10**33)
      if write > 0
      	decillion = english_number write
      	num_string = num_string + decillion + ' decillion'
      	if left > 0
      		num_string = num_string + ' '
      	end
      end

      write = left/(10**30)
      left = left - write*(10**30)

      if write > 0
      	nonillion = english_number write
      	num_string = num_string + nonillion + ' nonillion'
      	if left > 0
      		num_string = num_string + ' '
      	end
      end


      write = left/(10**27)
      left = left - write*(10**27)

      if write > 0
      	octillion = english_number write
      	num_string = num_string + octillion + ' octillion'
      	if left > 0
      		num_string = num_string + ' '
      	end
      end


      write = left/(10**24)
      left = left - write*(10**24)
      if write > 0
      	septillion = english_number write
      	num_string = num_string + septillion + ' septillion'
      	if left > 0
      		num_string = num_string + ' '
      	end
      end

      write = left/(10**21)
      left = left - write*(10**21)

      if write > 0
      	sextillion = english_number write
      	num_string = num_string + sextillion + ' sextillion'
      	if left > 0
      		num_string = num_string + ' '
      	end
      end


      write = left/(10**18)
      left = left - write*(10**18)

      if write > 0
      	quintillion = english_number write
      	num_string = num_string + quintillion + ' quintillion'
      	if left > 0
      		num_string = num_string + ' '
      	end
      end

      write = left/(10**15)
      left = left - write*(10**15)

      if write > 0
      	quadrillion = english_number write
      	num_string = num_string + quadrillion + ' quadrillion'
      	if left > 0
      		num_string = num_string + ' '
      	end
      end

      write = left/(10**12)
      left = left - write*(10**12)

      if write > 0
      	trillions = english_number write
      	num_string = num_string + trillions + ' trillion'
      	if left > 0
      		num_string = num_string + ' '
      	end
      end

      write = left/1000000000
      left = left - write*1000000000

      if write > 0
      	billions = english_number write
      	num_string = num_string + billions + ' billion'
      	if left > 0
      		num_string = num_string + ' '
      	end
      end

      write = left/1000000
      left = left - write*1000000

      if write > 0
      	millions = english_number write
      	num_string = num_string + millions + ' million'
      	if left > 0
      		num_string = num_string + ' '
      	end
      end

      write = left/1000
      left = left - write*1000

      if write > 0
      	thousands = english_number write
      	num_string = num_string + thousands + ' thousand'
      	if left > 0
      		num_string = num_string + ' '
      	end
      end

      write = left/100
      left  = left - write*100

      if write > 0
      	hundreds = english_number write
      	num_string = num_string + hundreds + ' hundred'
      	if left > 0
      		num_string = num_string + ' '
      	end
      end

      write = left/10
      left = left - write*10

      if write > 0
      	if ((write == 1) and (left > 0))
      		num_string = num_string + teenagers[left-1]
      		left = 0
      	else
      		num_string = num_string + tens_place[write-1]
      	end
      end

      if left > 0 and  write > 0
      	num_string = num_string + '-'
      else
      	num_string = num_string + ''
      end

      write = left
      left = 0

      if write > 0
      		num_string = num_string + ones_place[write-1]
      end

      num_string
    end
end
