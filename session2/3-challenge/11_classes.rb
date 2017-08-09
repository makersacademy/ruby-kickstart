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

class Beersong
  attr_accessor :nob
  def initialize(nob)
    if nob<0 
      @nob=0 
    elsif nob>99
      @nob=99
    else 
      @nob=nob
    end
  @nob1=@nob-1
end 
  
  def no_in_words
    nob_array=[@nob-@nob%10,@nob%10].map{|z| z if z!=0}.compact
    num_dict={0=> "zero" , 1 =>"one" , 2=>"two" , 3=>"three" , 4=>"four" , 5=>"five" , 6=>"six", 7=>"seven", 8=>"eight" , 9=>"nine" , 10=>"ten", 11=>"eleven" , 12=>"twelve" , 13=>"thirteen", 14=>"fourteen" , 15=>"fifteen", 16=>"sixteen" , 17=>"seventeen" , 18=>"eighteen" , 19=>"nineteen" , 20=>"twenty" , 30=>"thirty" , 40=>"forty" , 50=>"fifty" , 60=>"sixty" , 70=>"seventy" , 80=>"eighty" , 90=>"ninety" }
    c=nob_array.map {|z|   num_dict[z] if num_dict.has_key?(z)  }.join
  end 
  
  def no_in_words1
    nob_array1=[@nob1-@nob1%10,@nob1%10].map{|z| z if z!=0}.compact
   
    num_dict={0=> "zero" , 1 =>"one" , 2=>"two" , 3=>"three" , 4=>"four" , 5=>"five" , 6=>"six", 7=>"seven", 8=>"eight" , 9=>"nine" , 10=>"ten", 11=>"eleven" , 12=>"twelve" , 13=>"thirteen", 14=>"fourteen" , 15=>"fifteen", 16=>"sixteen" , 17=>"seventeen" , 18=>"eighteen" , 19=>"nineteen" , 20=>"twenty" , 30=>"thirty" , 40=>"forty" , 50=>"fifty" , 60=>"sixty" , 70=>"seventy" , 80=>"eighty" , 90=>"ninety" }
    nob_array1.map {|z|   num_dict[z] if num_dict.has_key?(z)  }.join
  end  
  
  def print_song
    @nob.times {print "#{no_in_words } of beer on the wall,\n#{no_in_words } of beer,\nTake one down, pass it around,\n#{ no_in_words1 } of beer on the wall.\n\n" }
  end 
end 
a=Beersong.new(2)
a.print_song
