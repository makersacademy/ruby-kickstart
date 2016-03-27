# DO NOT STRUGGLE ON THIS PROBLEM FOR MORE THAN 30 MINUTES!!
class BeerSong
  def print_song
number = 99
while number >= 1
  print "#{number_to_words(number)} on the wall,\n"
  print "#{number_to_words(number)}.\n"
  print "Take one down, pass it around,\n"
  print "#{number_to_words(number - 1)} on the wall.\n"
number -=1
end

  def number_to_words(number)
  words_hash = {0=>"zero",1=>"one",2=>"two",3=>"three",4=>"four",5=>"five",6=>"six",7=>"seven",8=>"eight",9=>"nine",
                      10=>"ten",11=>"eleven",12=>"twelve",13=>"thirteen",14=>"fourteen",15=>"fifteen",16=>"sixteen",
                       17=>"seventeen", 18=>"eighteen",19=>"nineteen",
                      20=>"twenty",30=>"thirty",40=>"forty",50=>"fifty",60=>"sixty",70=>"seventy",80=>"eighty",90=>"ninety"}
  if number == 0
  print "Zero bottles of beer"
  elsif number == 1
    print "One bottle of beer"
  elsif number <= 20 && number > 1 || number % 10 == 0
    word_twenty_under = words_hash[number].capitalize
    print "#{word_twenty_under} bottles of beer"
  else number > 20 || number < 99
    number_2 = number % 10
    number_1 = number - number_2
    array = number.to_s.scan(/\d/).map {|i| i.to_i}
    word_1 = words_hash[number_1]
    word_2 = words_hash[number_2]
    print "#{word_1.capitalize}-#{word_2} bottles of beer"
  end
end
end
end

#Works on IRB - doesn't seem to work on Rake

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
