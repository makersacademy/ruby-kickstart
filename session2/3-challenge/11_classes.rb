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

   attr_accessor :beers

	 def initialize(beers)

      if beers > 99
         beers = 99
      elsif beers < 1
         beers = 0
      end
		 @beers = beers
	 end
            
    def worded
          num_name = {      
            90 => "Ninety", 80 => "Eighty", 70 => "Seventy",60 => "Sixty",
            50 => "Fifty",40 => "Forty",30 => "Thirty",20 => "Twenty",
            19 => "Nineteen", 18 => "Eighteen",  17 => "Seventeen", 16 => "Sixteen",
            15 => "Fifteen",14 => "Fourteen", 13 =>"Thirteen",  12 => "Twelve",
            11 => "Eleven", 10 => "Ten",  9 => "Nine",8 => "Eight", 7 => "Seven",
             6 => "Six",5 => "Five",4 => "Four",3 => "Three",2 => "Two",1 => "One"
             }
          

         worded = ""

         beers = @beers

         x = true

         num_name.each do |number,name| 
            if beers == number
               worded << name
               x = false
            end
         end
                     
         num_name.each do |number, name|
                              
                  if beers.to_s[0].to_i == number.to_s[0].to_i && number >= 20 && beers != 0 && x == true
                    worded << name
                    worded << "-"
                    
                  end

                  if beers.to_s[1].to_i == number && number <= 9 && beers != 0 && x == true
                         worded << name.downcase
                  end
         end
            
            
         
            

         worded

        end



      def print_song


         
          while @beers.to_i > 2

               puts "#{worded} bottles of beer on the wall,"
               puts "#{worded} bottles of beer,"
               puts "Take one down, pass it around,"
               @beers -= 1
               puts "#{worded} bottles of beer on the wall."
          end

          if @beers.to_i == 2
               puts "#{worded} bottles of beer on the wall,"
               puts "#{worded} bottles of beer,"
               puts "Take one down, pass it around,"
               @beers -= 1
               puts "#{worded} bottle of beer on the wall."
          end

          if @beers.to_i == 1
               puts "#{worded} bottle of beer on the wall,"
               puts "#{worded} bottle of beer,"
               puts "Take one down, pass it around,"
               puts "Zero bottles of beer on the wall."
          end

          if @beers.to_i == 0
             print ""
          end

      end

      

end