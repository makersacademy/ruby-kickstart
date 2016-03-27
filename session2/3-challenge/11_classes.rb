class BeerSong  

	attr_accessor 'beers'

 	def initialize(beers)
 		beers = 0  if beers < 0
    	beers = 99 if beers > 99
    	self.beers = beers
  	end


	def print_song
			bottlecount = beers

			letters_to_numbers = {
				 "Ninety" => 90,
				 "Eighty" => 80,
				 "Seventy" => 70,
				 "Sixty" => 60,
				 "Fifty" => 50,
				 "Fourty" => 40,
				 "Thirty" => 30,
				 "Twenty" => 20,
				 "Nineteen" => 19,
				 "Eightteen" => 18,
				 "Seventeen" => 17,
				 "Sixteen" => 16,
				 "Fifteen" => 15,
				 "Fourteen" => 14,
				 "Thirteen" => 13,
				 "Twelve" => 12,
				 "Eleven" => 11,
				 "Ten" => 10,
				 "Nine" => 9,
				 "Eight" => 8,
				 "Seven" => 7,
				 "Six" => 6,
				 "Five" => 5,
				 "Four" => 4,
				 "Three" => 3,
				 "Two" => 2,
				 "One" => 1 }


		    if bottlecount == 0
			else  
				while bottlecount > 1
	 

					 bottlecount_primerA = bottlecount.to_s
					 bottlecount_primerB = bottlecount_primerA[0].to_i*10
					 bottlecount_primerC = bottlecount_primerA[1].to_i
								 		
					if bottlecount > 19 && bottlecount_primerC != 0
						bottlecount_tens = letters_to_numbers.key(bottlecount_primerB)
						bottlecount_singels = letters_to_numbers.key(bottlecount_primerC)
						bottlecount_text = "#{bottlecount_tens}-#{bottlecount_singels}"
					
					elsif bottlecount > 19 && bottlecount_primerC == 0
						bottlecount_tens = letters_to_numbers.key(bottlecount_primerB)
						bottlecount_text = "#{bottlecount_tens}"

					else 
						bottlecount_text = letters_to_numbers.key(bottlecount)
					end

					puts "#{bottlecount_text} bottles of beer on the wall,"
					puts "#{bottlecount_text} bottles of beer,"
					puts "Take one down, pass it around,"		
					
					bottlecount -= 1
				end

					puts "One bottle of beer on the wall,"
					puts "One bottle of beer,"
					puts "Take one down, pass it around,"	
					puts "Zero bottles of beer on the wall."
			end
	end
end	