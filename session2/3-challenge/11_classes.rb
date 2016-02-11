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
# 
class BeerSong
    attr_accessor 'bottles'
    def set_bottles(bottles)
        @bottles = bottles
    end
    
    def initialize(input)
        @bottles = input
        set_bottles(0) if input < 0
        set_bottles(99) if input >= 99
    end
    
    
    def number_to_word(n)
        numbers_words = {0 => "zero",1 => "one", 2 => "two", 3 =>"three",4 =>"four",5 =>"five",6 =>"six",7 =>"seven",8 =>"eight",9 =>"nine",
        10 =>"ten",11 =>"eleven",12 =>"twelve",13 =>"thirteen",14 =>"fourteen",15 =>"fifteen",16 =>"sixteen",17 =>"seventeen",18 =>"eighteen",19 =>"nineteen",
        20=>"twenty",30=>"thirty",40=>"forty",50=>"fifty",60=>"sixty",70=>"seventy",80=>"eighty",90=>"ninety"}
        to_return = ""
        if numbers_words.has_key?(n) then 
            to_return << numbers_words[n].capitalize
        else
            numbers_words.each{|int,word| to_return << word.capitalize if int == (n-(n%10))}
            to_return << "-"
            numbers_words.each{|int,word| to_return << word if int == (n%10)}
        end
        n == 1 ? to_return + " bottle" : to_return + " bottles"
    end
    
    def print_song
            while @bottles > 0 
            puts "#{number_to_word(bottles)} of beer on the wall,\n#{number_to_word(bottles)} of beer,"
            @bottles -=1
            puts "Take one down, pass it around,\n#{number_to_word(bottles)} of beer on the wall."
        end
    end
end

