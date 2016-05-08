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
    
    def initialize(beers)
        beers = 0 if beers < 0
        beers = 99 if beers > 99
        @beers = beers
    end
    
    def num_to_string(beers)
        
        tens_strings = ["Twenty","Thirty","Forty","Fifty","Sixty","Seventy","Eighty","Ninety"]
        units_strings = ["Zero","One","Two","Three","Four","Five","Six","Seven","Eight","Nine","Ten"]    
        teens_strings = ["Ten","Eleven","Twelve","Thirteen","Fourteen","Fifteen","Sixteen","Seventeen","Eighteen","Nineteen"]
        
        if beers >= 20
            return tens_strings[beers/10 - 2] if beers % 10 == 0
            return tens_strings[(beers/10)-2] + "-" + units_strings[(beers % 10)].downcase
        elsif beers < 20 && beers >= 10
            return teens_strings[beers-10]
        else
            return units_strings[beers]
        end
    end
    
    def one_bottle?(counter)
       counter == 1 ? "bottle" : "bottles" 
    end

    def print_song
         
        counter = @beers
        
         @beers.times do
            
            puts "#{num_to_string(counter)} #{one_bottle?(counter)} of beer on the wall,"
            puts "#{num_to_string(counter)} #{one_bottle?(counter)} of beer,"
            puts "Take one down, pass it around,"
            counter -= 1
            puts "#{num_to_string(counter)} #{one_bottle?(counter)} of beer on the wall." 
            
        end
    end
end
        
    
    
    
    
    
      
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
