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
attr_accessor :bottles
	def initialize(bottles)
		self.bottles = bottles
		
	end
def numbertotext(bottles)
		#if l divided by 10 is zero. we know its a single digit number (2/10 = 0.05 ==> 0)
		array_1 = ["Zero", "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine"]
		array_2 = ["Ten", "Twenty", "Thirty", "Forty", "Fifty", "Sixty", "Seventy", "Eighty", "Ninety"]
		array_3 = ["Eleven", "Twelve", "Thirteen", "Fourteen", "Fifteen", "Sixteen", "Seventeen", "Eighteen", "Nineteen"]

		if bottles / 10 == 0 
				

				translate = array_1[bottles]	
		#if l divided by 10 is more than zero, we know its a double digit number (20/10 = 2 ==> 2) and if the remainder of dividing by 
		#by ten is zero we know its a decade.	
		elsif bottles / 10 > 0 && bottles % 10 == 0
				
				#we want to select that correspending array value for l. So the equation in the parenthesis reduces l to its corresponding
				#array index. (eg. l = 20; (20/10)-1 => 1 ..its corresponding array index.
				translate = array_2[(bottles/10)-1]	
		#if l divided by 10 is equal to one, we know its a tens number (11/10 = 1.1 ==> 1) and if the remainder of dividing by 
		#by ten is not a zero, we know its a teens number.	
		elsif bottles / 10 == 1 && bottles % 10 != 0
				
				#we want to select that correspending array value for l. So the equation in the parenthesis reduces l to its corresponding
				#array index. (eg. l = 16; (16%10)-1 => 5 ..its corresponding array index.
				translate = array_3[(bottles%10)-1]

		#if l is greater than 20 and if the remainder of dividing by ten is not a zero, l is a double digit, combined number of a decade 
		#and a single number
		elsif bottles > 20 && bottles % 10 != 0
				translate = "#{array_2[(bottles/10)-1]}" + "-" + "#{array_1[(bottles%10)].downcase}"
		end
translate
end	

def bottle_s(bottles)
	if bottles == 1 
	"bottle" 
	else
	"bottles"	
	end
end
	
	def print_song

		
		bottles.downto(1) do |bottles| 
if bottles < 100
print"#{numbertotext(bottles)} #{bottle_s(bottles)} of beer on the wall,
#{numbertotext(bottles)} #{bottle_s(bottles)} of beer,
Take one down, pass it around,
#{numbertotext(bottles-1)} #{bottle_s(bottles-1)} of beer on the wall.
"
end
end

	end

end




b = BeerSong.new(18)
b.print_song
b.numbertotext(99)