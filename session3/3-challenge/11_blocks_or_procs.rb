# DO NOT STRUGGLE ON THIS PROBLEM FOR MORE THAN 30 MINUTES!

# Write a method that initializes an Array
# it receives one parameter, which is 5 by default, but can be overridden by the user
# The parameter determines the size of the Array to initialize
#
# If a block is submitted, use that block to initialize each index in the Array (pass it the current index)
#
# If a block is not submitted, initialize the Array to 100 times the array's index, as a String
#
# CONDITIONS:
#   Do not loop through the Array to initialize it, instead, use the block form
#
# HINTS:
#   Remember that the Array initializer will pass the index being initialized to your block that is doing the initializing
#   (if you wish to use blocks) Remember that in the block you pass, to Array.new, you can yield to the block the user passed
#   (if you wish to use procs)  You can place the block you received into the block spot with the ampersand ( ampersand to get it out, and to put it in )
#

def array_init (number = 5, &block)
	new_arr = Array.new(number)
	if block
		new_arr.each_index do |i|
			new_arr[i] = block.call i
		end
	else
		new_arr.each_index do |i|
			new_arr[i] = (100*i).to_s
		end
	end
end


=begin

# EXAMPLES:
#
print array_init(2) { |i| i.to_s }    # => ['0', '1']
print array_init { |i| i.to_s }       # => ['0', '1', '2', '3', '4']
print array_init 2                    # => ['0', '100']
print array_init                      # => ['0', '100', '200', '300', '400']
print array_init { 'hi' }              # => ['hi', 'hi', 'hi', 'hi', 'hi']
print array_init 10 do |i|            # => [0, -5, 400, -15, 800, -25, 1200, -35, 1600, -45]
   if i % 2 == 0
     i * 200
   else
     i * -5
   end
 end

=end




















