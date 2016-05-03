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
  def initialize(inibeers)
    if inibeers > 99
      @beers = 99
    elsif inibeers < 0
      @beers = 0
    else
      @beers = inibeers
    end
  end
  
  def englishNumber number
  if number < 0  # No negative numbers.
    return 'Please enter a number that isn\'t negative.'
  end
  if number == 0
    return 'Zero'
  end
  @num = number
  # No more special cases! No more returns!

  numString = ''  # This is the string we will return.

  onesPlace = ['one',     'two',       'three',    'four',     'five',
               'six',     'seven',     'eight',    'nine']
  conesPlace = ['One',     'Two',       'Three',    'Four',     'Five',
               'Six',     'Seven',     'Eight',    'Nine']
  tensPlace = ['Ten',     'Twenty',    'Thirty',   'Forty',    'Fifty',
               'Sixty',   'Seventy',   'Eighty',   'Ninety']
  teenagers = ['Eleven',  'Twelve',    'Thirteen', 'Fourteen', 'Fifteen',
               'Sixteen', 'Seventeen', 'Eighteen', 'Nineteen']

  # "left" is how much of the number we still have left to write out.
  # "write" is the part we are writing out right now.
  # write and left... get it?  :)
   left  = number
  write = left/1000          # How many hundreds left to write out?
  left  = left - write*1000  # Subtract off those hundreds.
  if write > 0 
      thousands = englishNumber write
      numString = numString + thousands + ' thousand'
    if left > 0
      # So we don't write 'two hundredfifty-one'...
      numString = numString + ' '
    end
  end
  
  
  write = left/100          # How many hundreds left to write out?
  left  = left - write*100  # Subtract off those hundreds.
 

  if write > 0 && write < 10
    # Now here's a really sly trick:
    hundreds  = englishNumber write
    numString = numString + hundreds + ' hundred'
    # That's called "recursion". So what did I just do?
    # I told this method to call itself, but with "write" instead of
    # "number". Remember that "write" is (at the moment) the number of
    # hundreds we have to write out. After we add "hundreds" to
    # "numString", we add the string ' hundred' after it.
    # So, for example, if we originally called englishNumber with
    # 1999 (so "number" = 1999), then at this point "write" would
    # be 19, and "left" would be 99. The laziest thing to do at this
    # point is to have englishNumber write out the 'nineteen' for us,
    # then we write out ' hundred', and then the rest of
    # englishNumber writes out 'ninety-nine'.

    if left > 0
      # So we don't write 'two hundredfifty-one'...
      numString = numString + ' '
    end
  end

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
    @num < 10 ? numString = numString + conesPlace[write-1] : numString = numString + onesPlace[write-1]
    # The "-1" is because onesPlace[3] is 'four', not 'three'.
  end

  # Now we just return "numString"...
  numString
  end





  def print_song
    puts "" if @beers == 0
    while @beers > 2
      puts "#{englishNumber(@beers)} bottles of beer on the wall,"
      puts "#{englishNumber(@beers)} bottles of beer,"
      puts "Take one down, pass it around," 
      puts "#{englishNumber(@beers - 1)} bottles of beer on the wall."
    @beers -= 1
    end
    while @beers > 1
      puts "#{englishNumber(@beers)} bottles of beer on the wall,"
      puts "#{englishNumber(@beers)} bottles of beer,"
      puts "Take one down, pass it around," 
      puts "#{englishNumber(@beers - 1)} bottle of beer on the wall."
      @beers -= 1
    end
    while @beers > 0
      puts "#{englishNumber(@beers)} bottle of beer on the wall,"
      puts "#{englishNumber(@beers)} bottle of beer,"
      puts "Take one down, pass it around," 
      puts "#{englishNumber(@beers - 1)} bottles of beer on the wall."
      @beers -= 1
    end

  end
  
end