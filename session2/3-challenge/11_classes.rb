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
	def initialize(init_beers)
		@init_beers = init_beers
	end

	def print_song
		@init_beers = 99 if @init_beers > 99
		until @init_beers <= 0 do
			puts "#{to_word(@init_beers)} #{bottle(@init_beers)} of beer on the wall,"
			puts "#{to_word(@init_beers)} #{bottle(@init_beers)} of beer,"
			puts "Take one down, pass it around,"
			puts "#{to_word(@init_beers - 1)} #{bottle(@init_beers - 1)} of beer on the wall."
		    @init_beers -= 1
		end
	end

	def to_word(n)
		word_hash = {0=>"Zero",1=>"One",2=>"Two",3=>"Three",4=>"Four",5=>"Five",6=>"Six",7=>"Seven",8=>"Eight",9=>"Nine",
                    10=>"Ten",11=>"Eleven",12=>"Twelve",13=>"Thirteen",14=>"Fourteen",15=>"Fifteen",16=>"Sixteen",
                     17=>"Seventeen", 18=>"Eighteen",19=>"Nineteen",
                    20=>"Twenty",30=>"Thirty",40=>"Forty",50=>"Fifty",60=>"Sixty",70=>"Seventy",80=>"Eighty",90=>"Ninety"}
        if n < 20 || n % 10 == 0
        	word_hash[n]
        else
        	n = n.to_s.split('')
        	n.first << "0"
        	n1 = n[0].to_i
        	n2 = n[1].to_i

        	"#{word_hash[n1]}-#{word_hash[n2].downcase}"
        end
	end

    def bottle(n)
		n == 1 ? "bottle" : "bottles"
	end
end