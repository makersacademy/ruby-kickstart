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
  def initialize(n)
    if n > 99
      @n = 99
    elsif n < 0
      @n = 0
    else
      @n = n
    end
  end
  def print_song
    counter = @n
    while counter > 0
      if counter == 2
         puts "#{exp(counter).capitalize} bottles of beer on the wall,\n#{exp(counter).capitalize} bottles of beer,\nTake one down, pass it around,\n#{exp(counter-1).capitalize} bottle of beer on the wall."
      elsif counter == 1
         puts "#{exp(counter).capitalize} bottle of beer on the wall,\n#{exp(counter).capitalize} bottle of beer,\nTake one down, pass it around,\n#{exp(counter-1).capitalize} bottles of beer on the wall."
      else
         puts "#{exp(counter).capitalize} bottles of beer on the wall,\n#{exp(counter).capitalize} bottles of beer,\nTake one down, pass it around,\n#{exp(counter-1).capitalize} bottles of beer on the wall."
      end
      counter -= 1
    end
  end

  def hundreds(n)
    words = { '0' => 'zero', '1' => 'one', '2' => 'two', '3' => 'three', '4' => 'four', '5' => 'five', '6' => 'six', '7' => 'seven', '8' => 'eight', '9' => 'nine', '10' => 'ten',
      '11' => 'eleven', '12' => 'twelve', '13' => 'thirteen', '14' => 'fourteen', '15' => 'fifteen', '16' => 'sixteen', '17' => 'seventeen',
      '18' => 'eighteen', '19' => 'nineteen', '20' => 'twenty', '30' => 'thirty', '40' => 'forty', '50' => 'fifty', '60' => 'sixty', '70' => 'seventy',
      '80' => 'eighty', '90' => 'ninety', '100' => 'hundred', '1000' => 'thousand', '1000000' => 'million'}

    word = n.to_s.split('')

    if n <= 20 || n == 30 || n == 40 || n == 50 ||n == 60||n == 70||n == 80||n == 90
      words[n.to_s]
    elsif n < 100
      "#{words[(word[0].to_i*10).to_s]}-#{words[word[1]]}"
    elsif n % 100 == 0
       "#{words[word[0]]} #{words['100']}"
    elsif n % 10 == 0
      "#{words[word[0]]} #{words['100']} and #{words[(word[1].to_i*10).to_s]}"
    elsif word[1] == '1'
      "#{words[word[0]]} #{words['100']} and #{words[(word[1]+word[2])]}"
    elsif word[1] == '0'
      "#{words[word[0]]} #{words['100']} and #{words[word[2]]}"
    else
      "#{words[word[0]]} #{words['100']} and #{words[(word[1].to_i*10).to_s]}-#{words[word[2]]}"
    end
  end

  def exp(n)
    if n >= 1000000
      "#{hundreds(n/1000000)} million #{hundreds((n%1000000)/1000)} thousand #{hundreds((n%1000000)%1000)}"
    elsif n >= 1000
      "#{hundreds(n/1000)} thousand #{hundreds(n%1000)}"
    elsif n >= 0
      hundreds(n)
    end
  end
end
